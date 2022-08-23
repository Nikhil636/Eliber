import 'package:eliber/screens/payment.dart';
import 'package:eliber/utils/newbook.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class premium extends StatelessWidget {
  const premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: hexStringToColor("8AAAE5"),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("ELIBER",
            style: TextStyle(
                fontFamily: "DynaPuff", fontSize: 35, color: Colors.black)),
      ),
      backgroundColor: hexStringToColor("8AAAE5"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(
                        top: size.height * 0.12,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/bg.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Benefits of Premium -",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "- Access to all E-Books",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "- Extra Discount",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "- Access to Reading Tools",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "- Early Access to New Launches",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "- E-Book from every language",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "- Experts Recommendation",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "- Remove Ads",
                                      style: TextStyle(
                                          fontFamily: "Aboreto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    SizedBox(
                                        width: 320,
                                        height: 50,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          payment())));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary:
                                                    hexStringToColor("8AAAE5"),
                                                side: BorderSide(width: 100),
                                                elevation: 6),
                                            child: Text(
                                              "BUY NOW",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            )))
                                  ],
                                )
                              ],
                            )
                          ])),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Go Premium",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " Today",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Aboreto",
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "for just",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "Aboreto",
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "₹269/-",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Aboreto"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                                child: Image.asset(
                              "assets/images/badge.png",
                              fit: BoxFit.fill,
                            ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: hexStringToColor("8AAAE5"),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: hexStringToColor("8AAAE5"),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              backgroundColor: hexStringToColor("8AAAE5"),
              icon: Icon(Icons.library_books),
              label: 'My E-Books'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
