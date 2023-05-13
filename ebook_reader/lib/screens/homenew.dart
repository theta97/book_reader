import 'package:ebook_reader/genre.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ebook_reader/book.dart';
import 'package:ebook_reader/newbooks.dart';
import 'package:ebook_reader/bookcards.dart';

// Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://gorest.co.in/public/v1/users'));
// }

class Book {
  String Book_ID;
  String bookname;
  String author_id;
  String bookpic;
  String bookpdf;

  Book({required this.Book_ID, required this.bookname, required this.author_id, required this.bookpic, required this.bookpdf});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        Book_ID: json['Book_ID'], bookname: json['bookname'], author_id: json['bookpic'], bookpic: json['author_id'], bookpdf: json['bookpdf']);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final String apiUrl = "https://book_reader.test/";
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
        Expanded(child: FutureBuilder<List<Book>>(
            future: fetchBooks(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Book> books = snapshot.data as List<Book>;
                return ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(books[index].bookname),
                            Text(books[index].author_id),
                            Text(books[index].bookpic),
                            Text(books[index].bookpdf),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PdfSc(
                                        pdflink:
                                            "https://localhost/ebook_reader/pdfs/test.pdf"),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      );
                    });
              }
              if (snapshot.hasError) {
                print(snapshot.error.toString());
                return Text('error');
              }
              return CircularProgressIndicator();
            }, 
        
        ),
        ),
        ],
      ),
    );
  }

  Future<List<Book>> fetchBooks() async {
    var response = await http.get(Uri.parse("http://book_reader.test/php/"));
    return (json.decode(response.body)['data'] as List)
        .map((e) => Book.fromJson(e))
        .toList();
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
