import 'package:flutter/material.dart';

// class LibraryPageLastReadBannerSection extends StatelessWidget {
//   const LibraryPageContinueReadingBannerSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 5),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 height: 250,
//                 width: 460,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/1.jpg'),
//                     fit: BoxFit.fill,
//                     colorFilter: ColorFilter.mode(
//                       Color(0xFF203A43),
//                       BlendMode.srcATop,
//                     ),
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 30),
//                   child: Column(
//                     children: [
//                       Text(
//                         "message",
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         'Which book suits yourcurrent mood?',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w300,
//                           color: Colors.white.withOpacity(0.7),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom: 10,
//                 child: Container(
//                   height: 100,
//                   width: 340,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF2C5364),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/2.jpg'),
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 25, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               'History of Thiruvalluvar',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(top: 10, right: 30),
//                               child: Text(
//                                 'Author: Gaunthama Sannu',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black.withOpacity(0.7),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LibraryPageBookmarkSection extends StatefulWidget {
  const LibraryPageBookmarkSection({Key? key});

  @override
  State<LibraryPageBookmarkSection> createState() =>
      _LibraryPageBookmarkSectionState();
}

class _LibraryPageBookmarkSectionState
    extends State<LibraryPageBookmarkSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        scrollDirection: Axis.vertical,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.4),
        children: <Widget>[
          Container(
            height: 450.0,
            // padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/2.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    );
  }
}

class LibraryTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
