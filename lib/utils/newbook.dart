import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eliber/reusable/reusable.dart';
import 'package:eliber/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import '../Screens/premium.dart';
import 'color.dart';

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
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border))
        ],
      ));
}

Future openFile({required String url, String? name}) async {
  final file = await downloadFile(url, name!);
  if (file == null) return;
  print('path:${file.path}');
  OpenFile.open(file.path);
}

Future<File?> downloadFile(String url, String name) async {
  final appStorage = await getApplicationSupportDirectory();
  final file = File('${appStorage.path}/$name');
  try {
    final response = await Dio().get(url,
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0));
    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
    return file;
  } catch (e) {
    return null;
  }
}

Widget bucketbook(BookData book) {
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
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
        ],
      ));
}
