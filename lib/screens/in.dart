import 'package:eliber/Screens/home.dart';
import 'package:eliber/screens/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eliber/reusable/reusable.dart';
import 'package:eliber/screens/up.dart';
import 'package:eliber/Screens/home.dart';
import 'package:eliber/utils/color.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Sign in Failed!"),
      content: Text("Wrong email or password."),
      actions: [],
    );
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)),
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.fromLTRB(
            15, MediaQuery.of(context).size.height * 0.2, 15, 0),
        child: Column(
          children: <Widget>[
            logoWidget("assets/images/logo.png"),
            SizedBox(
              height: 60,
            ),
            reusableTextField("Enter Email", Icons.person_outline, false,
                emailTextController),
            SizedBox(
              height: 30,
            ),
            reusableTextField("Enter Password", Icons.lock_outline, true,
                passwordTextController),
            SizedBox(
              height: 20,
            ),
            inupbutton(context, true, () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: emailTextController.text,
                      password: passwordTextController.text)
                  .then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const home()));
              }).onError((error, stackTrace) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    });
              });
            }),
            inupoption(),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "-------OR-------",
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "For Login with your phone number click",
                      style: TextStyle(fontSize: 13),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => otp()));
                        },
                        child: Text(
                          "here",
                          style: TextStyle(
                              color: hexStringToColor("8AAAE5"), fontSize: 15),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      )),
    ));
  }

  Row inupoption() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Don't have account?", style: TextStyle(color: Colors.black)),
      GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => up()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
                color: Color.fromARGB(255, 138, 170, 229),
                fontWeight: FontWeight.bold),
          )),
    ]);
  }
}
