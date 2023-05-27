import 'package:flutter/material.dart';

class NewBooks extends StatelessWidget {
  const NewBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              alignment: Alignment.center,
              // To adjust the newly added heading added title change height
              height: 120,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Newly Added',
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
