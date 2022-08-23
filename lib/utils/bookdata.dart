import 'package:flutter/material.dart';

import '../reusable/reusable.dart';

class Book {
  String? title;
  String? urlImage;
  String? author;
  double? rating;
  Book({this.title, this.urlImage, this.author, this.rating});
}

List<BookData> books = [
  BookData(
      "https://kbimages1-a.akamaihd.net/34eadd07-ee92-4a18-bdff-3b7d368b653f/353/569/90/False/the-satanic-verses-2.jpg",
      "The Satanic Verses",
      "Salman Rushdie",
      700,
      4.0,
      "Modern and contemporary fiction",
      "https://www.pdfdrive.com/download.pdf?id=47555207&h=674d8a6a42e5cc050a2d20e827d451d2&u=cache&ext=pdf"),
  BookData(
      "https://kbimages1-a.akamaihd.net/d6862245-196e-40dd-98d3-7d343256ed12/353/569/90/False/slow-burn-76.jpg",
      "Slow Burn",
      "J.H. Croix",
      238,
      4.6,
      "A firefighter falls for a feisty heroine in this workplace romance.",
      "https://www.pdfdrive.com/download.pdf?id=163390487&h=b62044dc0700872034708949f9329700&u=cache&ext=pdf"),
  BookData(
      "https://kbimages1-a.akamaihd.net/8c169c0a-201d-4d70-a8fd-9849ccf3172d/353/569/90/False/joaquin-el-chapo-guzman-biography-of-a-billionaire-fugitive.jpg",
      "Joaquin Guzman",
      "James Bush",
      135,
      3.8,
      "Biography of a Billionaire Fugitive",
      "https://www.pdfdrive.com/download.pdf?id=195130118&h=4d73604c0e4255a382173e26f77ce91e&u=cache&ext=epub"),
  BookData(
      "https://kbimages1-a.akamaihd.net/d5370080-be5e-4d3f-b7fe-aff80993f25e/353/569/90/False/my-other-husband.jpg",
      "My Other Husband",
      "Dorothy Koomson",
      399,
      5,
      "A series of terrifying murders. A set of complex lies.And a woman with no way to clear her name.",
      "https://www.pdfdrive.com/download.pdf?id=157870077&h=55dba55ff165ced8ac64f92a92c211fe&u=cache&ext=pdf"),
  BookData(
      "https://kbimages1-a.akamaihd.net/16607ad0-8d02-4da9-9968-410ce45597dd/353/569/90/False/the-time-for-love.jpg",
      "The Time For Love",
      "Stephanie Laurens",
      389,
      4,
      "A classic historical romance, incorporating adventure and intrigue, set in Sheffield.",
      "https://www.pdfdrive.com/download.pdf?id=158189515&h=3eb267c1afd8113a4e3e0c74f4dd2521&u=cache&ext=epub"),
  BookData(
      "https://kbimages1-a.akamaihd.net/7292758c-a84a-4c53-80e4-73dd3a45c404/353/569/90/False/gone-girl.jpg",
      "Gone Girl",
      "Gillian Flynn",
      574,
      4,
      "One of the most popular thrillers of the year is also one of the smartest... Flynn's book cleverly outpaces its neo-noir trappings and consistently surprises the reader.",
      "https://www.pdfdrive.com/download.pdf?id=60345130&h=323e31cfeabee39f56b8739c18eeebf1&u=cache&ext=pdf"),
  BookData(
      "https://kbimages1-a.akamaihd.net/a9b42089-1898-41d5-a18f-a6e0e482b6b3/353/569/90/False/gray-mountain-2.jpg",
      "Gray Mountain",
      "John Grisham",
      449,
      3.9,
      "The worst kind of corporate exploitation of the poor in rural areas is exposed . . . Absolute suspense and drama filled the pages",
      "https://www.pdfdrive.com/download.pdf?id=33474015&h=0a32ae93071dc5e8c4efb7a0aca75231&u=cache&ext=pdf"),
  BookData(
      "https://kbimages1-a.akamaihd.net/e87801d9-eeca-4c3a-b4f1-dc9af8ecb458/353/569/90/False/the-kite-runner-2.jpg",
      "The Kite Runner",
      "Khaled Hosseini",
      407,
      4.7,
      " The story of Amir, a young boy from the Wazir Akbar Khan district of Kabul. The story is set against a backdrop of tumultuous events, from the fall of Afghanistan's monarchy through the Soviet invasion, the exodus of refugees to Pakistan and the United States, and the rise of the Taliban regime.",
      "https://www.pdfdrive.com/download.pdf?id=48246107&h=0da072a47247c2893f75477c129f6b55&u=cache&ext=pdf"),
  BookData(
      "https://kbimages1-a.akamaihd.net/d2c3c675-138a-4e70-b08b-b918f1bff4d0/353/569/90/False/chasing-alys.jpg",
      "Chasing Alys",
      "Morgana Bevan",
      361,
      4.4,
      "",
      ""),
  BookData(
      "https://kbimages1-a.akamaihd.net/8bed9d54-00a1-4be8-a268-dcdb0ca99985/353/569/90/False/the-deal-31.jpg",
      "The Deal",
      "Elle Kennedy",
      408,
      4.5,
      "",
      ""),
  BookData(
      "https://kbimages1-a.akamaihd.net/da14021f-80f4-423e-a1bb-bffbc9848872/353/569/90/False/saraswatichandra-hindi-novel.jpg",
      "सरस्वतीचन्द्र",
      "Govindram Tripathi",
      122,
      5,
      "",
      ""),
];
