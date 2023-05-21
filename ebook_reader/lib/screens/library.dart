import 'package:ebook_reader/sections/library/bookmark.dart';
import 'package:ebook_reader/sections/library/bookmarksectheading.dart';
import 'package:ebook_reader/sections/library/lastreadbanner.dart';
import 'package:flutter/material.dart';




class LibraryTest extends StatelessWidget {
  const LibraryTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack( 
      children: [
        Positioned(
        child: LibraryPageLastReadBannerSection(),
        ),
        //BookMarkSection Heading 
       BookMarkHeading(),
      Container(padding: EdgeInsets.only(top: 400.0),
     child: GridView.count(
          // scrollDirection: Axis.vertical,
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
   ),
       
      ],
     )

    


    );
  }
}
