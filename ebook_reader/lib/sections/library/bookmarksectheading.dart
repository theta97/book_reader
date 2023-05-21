import 'package:flutter/material.dart';

class BookMarkHeading extends StatelessWidget {
  const BookMarkHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Bookmarked',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5, left: 225),
          child: Text(
            'See all',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }
}
