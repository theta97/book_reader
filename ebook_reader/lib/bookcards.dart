import 'package:flutter/material.dart';

class BookCards extends StatelessWidget {
  const BookCards({
    Key? key,
    required this.bookpic,
    required this.booktitle,
    required this.bookauthor,
  }) : super(key: key);
  final String bookpic;
  final String booktitle;
  final String bookauthor;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            color: Color(0xff0B4066),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(bookpic),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          booktitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            bookauthor,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.7),
            ),
          ),
        ],
      ),
    ]);
  }
}
