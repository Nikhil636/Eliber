import 'package:eliber/screens/drawer.dart';
import 'package:eliber/utils/newbook.dart';
import 'package:eliber/reusable/reusable.dart';
import 'package:eliber/screens/premium.dart';
import 'package:eliber/screens/search.dart';
import 'package:eliber/utils/book.dart';
import 'package:eliber/utils/color.dart';
import 'package:flutter/material.dart';
import '../utils/bookdata.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Widget newbook(BookData book) {
    return Container(
        width: double.infinity,
        height: 150.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              height: 128.0,
              width: 83.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(book.bookcover),
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.bookname,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  book.author,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.content_copy),
                    Text(book.pagenum.toString()),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.star),
                    Text(book.Rating.toString()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 25,
                  width: 112,
                  child: ElevatedButton(
                      onPressed: () {
                        openFile(
                            url:
                                "http://www.africau.edu/images/default/sample.pdf",
                            name: "slowburn.pdf");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: hexStringToColor("8AAAE5")),
                      child: Text("Download")),
                )
              ],
            )),
            Icon(Icons.bookmark_border)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: hexStringToColor("8AAAE5"),
        centerTitle: true,
        title: Text("ELIBER",
            style: TextStyle(
                fontFamily: "DynaPuff", fontSize: 35, color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.workspace_premium_outlined),
            onPressed: (() {
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => premium()));
              }
            }),
          )
        ],
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.2),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search your Book....",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ss()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Trending ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: 280.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      mybook(books[0]),
                      mybook(books[1]),
                      mybook(books[2]),
                      mybook(books[8]),
                      mybook(books[9]),
                    ],
                  ),
                ),
                Text(
                  "Our Recommendations",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 600.0,
                  child: ListView(children: [
                    newbook(books[0]),
                    newbook(books[1]),
                    newbook(books[2]),
                    newbook(books[10]),
                    newbook(books[3]),
                    newbook(books[4]),
                    newbook(books[5]),
                    newbook(books[6]),
                    newbook(books[8]),
                    newbook(books[7]),
                    newbook(books[9]),
                  ]),
                )
              ],
            ),
          ))),
    );
  }
}

Widget newbook(BookData book) {
  return Container(
      width: double.infinity,
      height: 150.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8.0),
            height: 128.0,
            width: 83.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(book.bookcover),
                  fit: BoxFit.cover,
                )),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.bookname,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                book.author,
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.content_copy),
                  Text(book.pagenum.toString()),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(Icons.star),
                  Text(book.Rating.toString()),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
                width: 112,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: hexStringToColor("8AAAE5")),
                    child: Text("Download")),
              )
            ],
          )),
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {},
          )
        ],
      ));
}
