// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:ebook_reader/genre.dart';
// import 'package:ebook_reader/bookcards.dart';
// import 'package:ebook_reader/newbooks.dart';
// import 'package:flutter/rendering.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ClipPath(
//               clipper: MyClipper(),
//               child: Container(
//                 padding: EdgeInsets.only(
//                   top: 40,
//                 ),
//                 height: 380,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.bottomLeft,
//                     end: Alignment.topRight,
//                     colors: [
//                       Color(0xFF0F2027),
//                       Color(0xFF203A43),
//                       Color(0xFF2C5364),
//                     ],
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.menu,
//                             size: 35,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const Text(
//                           "Ebook Reader",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 30,
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             CupertinoIcons.add,
//                             size: 35,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 30.0, vertical: 20.0),
//                       margin: EdgeInsets.symmetric(
//                           vertical: 15.0, horizontal: 20.0),
//                       height: 180,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(15.0),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(0xf080808),
//                             blurRadius: 8.0,
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         children: [
//                           Column(
//                             children: const [
//                               Text(
//                                 "Hi User",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 28,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const GenreCard(),
//             Column(
//               children: [
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       InkWell(
//                         onTap: () {},
//                         child: const BookCards(
//                           bookpic: "assets/images/1.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: const BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: const BookCards(
//                           bookpic: "assets/images/1.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: const BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: const BookCards(
//                           bookpic: "assets/images/1.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: const BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 NewBooks(),
//                 SizedBox(height: 15),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       InkWell(
//                         onTap: () {},
//                         child: BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {},
//                         child: BookCards(
//                           bookpic: "assets/images/2.jpg",
//                           booktitle: 'Title of the Book',
//                           bookauthor: 'Author ',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 80);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 80);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     return false;
//   }
// }
