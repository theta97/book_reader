import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF0B4066),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Genre1',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF0B4066),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Genre2',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF0B4066),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Genre3',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF0B4066),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Genre4',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     alignment: Alignment.center,
            //     height: 40,
            //     width: 140,
            //     decoration: BoxDecoration(
            //       color: Color(0xFF0E402D),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Text(
            //       'Genre5',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.w700,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     alignment: Alignment.center,
            //     height: 40,
            //     width: 140,
            //     decoration: BoxDecoration(
            //       color: Color(0xFF0E402D),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Text(
            //       'Genre6',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.w700,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
