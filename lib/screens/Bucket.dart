import 'package:flutter/material.dart';

import '../utils/bookdata.dart';
import '../utils/color.dart';
import '../utils/newbook.dart';

class bucket extends StatefulWidget {
  const bucket({Key? key}) : super(key: key);

  @override
  State<bucket> createState() => _bucketState();
}

class _bucketState extends State<bucket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: hexStringToColor("8AAAE5"),
        centerTitle: true,
        title: Text("ELIBER",
            style: TextStyle(
                fontFamily: "DynaPuff", fontSize: 35, color: Colors.black)),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView(children: [
                bucketbook(books[8]),
                bucketbook(books[1]),
                bucketbook(books[9]),
                bucketbook(books[10]),
              ]),
            ),
          )),
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
