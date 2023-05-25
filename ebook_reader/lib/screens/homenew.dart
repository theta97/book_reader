import 'package:ebook_reader/genre.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ebook_reader/book.dart';
import 'package:ebook_reader/newbooks.dart';
import 'package:ebook_reader/bookcards.dart';
import 'package:ebook_reader/api/books_api.dart';
import 'package:ebook_reader/models/book.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(
                top: 40,
              ),
              height: 380,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Ebook Reader",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.add,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xf080808),
                          blurRadius: 8.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Hi User",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GenreCard(),
          // Expanded(
          //   child: ListView(
          //       // shrinkWrap: true,
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left: 10),
          //           child: Container(
          //             // height: 10,
          //             width: 150,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               image: DecorationImage(
          //                 image: AssetImage("assets/images/1.jpg"),
          //                 fit: BoxFit.fill,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ]),
          // )
          Expanded(
            child: FutureBuilder<List<Data>>(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      // return
                      //   Row(
                      //     children: [
                      //       Text(snapshot.data![index].bookname),
                      //       Text(snapshot.data![index].bookpic),
                      //       // Text(books[index].bookpic),
                      //       // Text(books[index].bookpdf),
                      //       InkWell(
                      //         onTap: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => const PdfSc(
                      //                   pdflink:
                      //                       "https://localhost/ebook_reader/pdfs/test.pdf"),
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //     ],
                      //   );
                      return Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              height: 240,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      snapshot.data![index].bookpic),
                                  // "https://book_reader.test:443/books/pics/neptunesbrood.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              snapshot.data![index].bookname,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                // color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                // return CircularProgressIndicator();
                return const Text("It work??");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
