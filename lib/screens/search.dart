import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:eliber/Screens/home.dart';
import 'package:eliber/utils/bookdata.dart';

import '../utils/color.dart';

class ss extends StatefulWidget {
  const ss({Key? key}) : super(key: key);

  @override
  State<ss> createState() => _ssState();
}

class _ssState extends State<ss> {
  static List<Book> allbooks = [
    Book(
        title: "The Satanic Verses",
        urlImage:
            "https://kbimages1-a.akamaihd.net/34eadd07-ee92-4a18-bdff-3b7d368b653f/353/569/90/False/the-satanic-verses-2.jpg",
        author: "Salman Rushdie",
        rating: 4),
    Book(
        title: "Slow Burn",
        urlImage:
            "https://kbimages1-a.akamaihd.net/d6862245-196e-40dd-98d3-7d343256ed12/353/569/90/False/slow-burn-76.jpg",
        author: "J.H. Croix",
        rating: 4.6),
    Book(
        title: "Joaquin “El Chapo” Guzman",
        urlImage:
            "https://kbimages1-a.akamaihd.net/8c169c0a-201d-4d70-a8fd-9849ccf3172d/353/569/90/False/joaquin-el-chapo-guzman-biography-of-a-billionaire-fugitive.jpg",
        author: "James Bush",
        rating: 3.8),
    Book(
        title: "My Other Husband",
        urlImage:
            "https://kbimages1-a.akamaihd.net/d5370080-be5e-4d3f-b7fe-aff80993f25e/353/569/90/False/my-other-husband.jpg",
        author: "Dorothy Koomson",
        rating: 5),
    Book(
        title: "The Time For Love",
        urlImage:
            "https://kbimages1-a.akamaihd.net/16607ad0-8d02-4da9-9968-410ce45597dd/353/569/90/False/the-time-for-love.jpg",
        author: "Stephanie Laurens",
        rating: 4),
    Book(
        title: "Gone Girl",
        urlImage:
            "https://kbimages1-a.akamaihd.net/7292758c-a84a-4c53-80e4-73dd3a45c404/353/569/90/False/gone-girl.jpg",
        author: "Gillian Flynn",
        rating: 4),
    Book(
        title: "Gray Mountain",
        urlImage:
            "https://kbimages1-a.akamaihd.net/a9b42089-1898-41d5-a18f-a6e0e482b6b3/353/569/90/False/gray-mountain-2.jpg",
        author: "John Grisham",
        rating: 3.9),
    Book(
        title: "The Kite Runner",
        urlImage:
            "https://kbimages1-a.akamaihd.net/e87801d9-eeca-4c3a-b4f1-dc9af8ecb458/353/569/90/False/the-kite-runner-2.jpg",
        author: "Khaled Hosseini",
        rating: 4.7),
    Book(
        title: "Chasing Alys",
        urlImage:
            "https://kbimages1-a.akamaihd.net/d2c3c675-138a-4e70-b08b-b918f1bff4d0/353/569/90/False/chasing-alys.jpg",
        author: "Morgana Bevan",
        rating: 4.4),
    Book(
        title: "The Deal",
        urlImage:
            "https://kbimages1-a.akamaihd.net/8bed9d54-00a1-4be8-a268-dcdb0ca99985/353/569/90/False/the-deal-31.jpg",
        author: "Elle Kennedy",
        rating: 4.5),
    Book(
        title: "सरस्वतीचन्द्र",
        urlImage:
            "https://kbimages1-a.akamaihd.net/da14021f-80f4-423e-a1bb-bffbc9848872/353/569/90/False/saraswatichandra-hindi-novel.jpg",
        author: "Govindram Tripathi",
        rating: 5),
  ];
  List<Book> display_list = List.from(allbooks);
  void updateList(String value) {
    setState(() {
      display_list = allbooks
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 330,
                  child: TextField(
                    onChanged: (value) => updateList(value),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.2),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search your Book....",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none)),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: display_list.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(display_list[index].title!),
                          subtitle: Text(display_list[index].author!),
                          trailing:
                              Text("${display_list[index].rating.toString()}"),
                          leading: Image.network(display_list[index].urlImage!),
                        )))
          ]),
    );
  }
}
