import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../utils/color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(otp());
}

class otp extends StatelessWidget {
  const otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: hexStringToColor("8AAAE5"),
        elevation: 0,
      ),
      body: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var otpController = TextEditingController();
  var numController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  String verificationIdrecieved = "";
  bool otpCodeVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numController,
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    labelText: "Enter Phone Number",
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: Colors.black.withOpacity(0.1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Visibility(
                    visible: otpCodeVisible,
                    child: TextField(
                      controller: otpController,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        labelText: "Enter OTP",
                        labelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.4)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.black.withOpacity(0.1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(90)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.black26;
                          }
                          return hexStringToColor("8AAAE5");
                        }),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                    onPressed: () {
                      if (otpCodeVisible) {
                        verifycode();
                      } else {
                        verify();
                      }
                    },
                    child: Text(
                      otpCodeVisible ? "LOGIN" : "VERIFY",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 20),
                    )),
              ),
            ],
          ),
        ));
  }

  void verify() {
    auth.verifyPhoneNumber(
        phoneNumber: numController.text,
        verificationCompleted: ((PhoneAuthCredential credential) async {
          await auth
              .signInWithCredential(credential)
              .then((value) => print("fawef"));
        }),
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verificationID, int? resendToken) {
          verificationIdrecieved = verificationID;
          otpCodeVisible = true;

          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationID) {});
  }

  void verifycode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationIdrecieved, smsCode: otpController.text);
    await auth.signInWithCredential(credential).then((value) => print("hello"));
  }
}
