import 'package:flutter/material.dart';

class LibraryPageLastReadBannerSection extends StatelessWidget {
  const LibraryPageLastReadBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: 460,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/1.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      Color(0xFF203A43),
                      BlendMode.srcATop,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        "message",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Which book suits yourcurrent mood?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  height: 100,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Color(0xFF2C5364),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('assets/images/2.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Column(
                          children: [
                            Text(
                              'History of Thiruvalluvar',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 30),
                              child: Text(
                                'Author: Gaunthama Sannu',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}