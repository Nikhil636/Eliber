import 'package:eliber/reusable/reusable.dart';
import 'package:eliber/screens/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eliber/screens/in.dart';
import 'package:flutter/services.dart';
import '../utils/color.dart';

class up extends StatefulWidget {
  const up({Key? key}) : super(key: key);

  @override
  State<up> createState() => _upState();
}

class _upState extends State<up> {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: hexStringToColor("8AAAE5"),
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.jpg"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 18,
                      ),
                      reusableTextField("Enter UserName", Icons.person_outline,
                          false, userNameTextController),
                      const SizedBox(
                        height: 18,
                      ),
                      reusableTextField("Enter Email Id", Icons.person_outline,
                          false, emailTextController),
                      const SizedBox(
                        height: 18,
                      ),
                      reusableTextField("Enter Password", Icons.lock_outlined,
                          true, passwordTextController),
                      const SizedBox(
                        height: 15,
                      ),
                      inupbutton(context, false, () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailTextController.text,
                                password: passwordTextController.text)
                            .then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signin()));
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      }),
                    ])))));
  }
}
