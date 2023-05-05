import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the temp appbar title of library page'),
      ),
    );
    throw UnimplementedError();
  }
}
