import 'package:flutter/material.dart';

import '../../api/books_api.dart';
import '../../models/book_model.dart';

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
      body: FutureBuilder<List<Book>>(
        future: fetchBook(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.count(
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
              ],
            );
          };
          if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                // return CircularProgressIndicator();
                return const Text("It work??");
              },
        
      ),
    );
  }
}
