import 'package:eliber/screens/in.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.push(context, MaterialPageRoute(builder: (context) => signin()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                  Expanded(
                      child: Container(
                    width: 120,
                    // color: Colors.black,
                    margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.contain)),
                  )),
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "ELIBER",
                          style: TextStyle(
                              fontFamily: "DynaPuff",
                              fontSize: 35,
                              color: Colors.black))
                    ])),
                    //     child: Container(
                    //   margin: EdgeInsets.fromLTRB(0, 0, 0, 220),
                    //   padding: EdgeInsets.all(2),
                    //   child: Text(
                    //     "ELIBER",
                    //     style: TextStyle(fontFamily: "DynaPuff", fontSize: 35),
                    //   ),
                    // )),
                  ),
                  Expanded(
                      child: RichText(
                          text: TextSpan(
                    children: [
                      TextSpan(
                        text: "E-Book Store/Reader",
                        style: TextStyle(
                            fontFamily: "Aboreto",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )
                      // Container(
                      //   padding: EdgeInsets.all(5),
                      //   margin: EdgeInsets.fromLTRB(5, 0, 0, 220),
                      //   width: 250,

                      //   child: Text(
                      //     "E-Book Store/Reader",
                      //     style: TextStyle(
                      //         fontFamily: "Aboreto",
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w700),
                      //   ),
                      // ))
                    ],
                  )))
                ]))));
  }
}
