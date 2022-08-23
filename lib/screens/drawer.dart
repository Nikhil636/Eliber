import 'dart:io';
import 'package:eliber/screens/in.dart';
import 'package:eliber/screens/premium.dart';
import 'package:eliber/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../utils/newbook.dart';
import 'Bucket.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nikhil",
                style: TextStyle(
                    fontFamily: "Aboreto",
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            accountEmail: Text("Nikhil@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                "assets/images/download.png",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(
              color: hexStringToColor("8AAAE5"),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("Bookmarks"),
            iconColor: Colors.black,
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bucket()));
            }),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("My E-Books"),
            iconColor: Colors.black,
            onTap: (() {}),
          ),
          ListTile(
            leading: Icon(Icons.workspace_premium),
            iconColor: Colors.black,
            title: Text("Premium"),
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => premium()));
            }),
          ),
          ListTile(
            leading: Icon(Icons.wallet),
            iconColor: Colors.black,
            title: Text(
              "Wallet",
            ),
            onTap: (() {}),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            iconColor: Colors.black,
            title: Text("Share"),
            onTap: (() {
              Share.share(
                  "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
            }),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: Colors.black,
            title: Text("Settings"),
            onTap: (() {}),
          ),
          ListTile(
            leading: Icon(Icons.description),
            iconColor: Colors.black,
            title: Text("Policies"),
            onTap: (() {
              openFile(
                  url:
                      "https://s21.q4cdn.com/798735247/files/doc_downloads/corporate_governance/Code-of-Conduct-Policy.pdf",
                  name: "Policies.pdf");
            }),
          ),
          Divider(
            color: hexStringToColor("8AAAE5"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            iconColor: Colors.black,
            title: Text("Logout"),
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => signin()));
            }),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            iconColor: Colors.black,
            title: Text("Exit"),
            onTap: (() {
              exit(0);
            }),
          ),
        ],
      ),
    ));
  }
}
