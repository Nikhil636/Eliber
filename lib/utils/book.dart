import 'package:eliber/reusable/reusable.dart';
import 'package:flutter/material.dart';

Widget mybook(BookData book) {
  return Container(
    margin: EdgeInsets.only(right: 12.0),
    width: 122.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 121.66,
            height: 180.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: NetworkImage(book.bookcover), fit: BoxFit.cover))),
        SizedBox(
          height: 12.0,
        ),
        Text(
          book.bookname,
          style: TextStyle(fontSize: 18.0),
        )
      ],
    ),
  );
}
