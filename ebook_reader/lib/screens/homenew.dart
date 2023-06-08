import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ebook_reader/bookpdf.dart';
import 'package:ebook_reader/sections/home/newbooks.dart';
import 'package:ebook_reader/sections/home/bookcards.dart';
import 'package:ebook_reader/api/books_api.dart';
import 'package:ebook_reader/models/book_model.dart';
import 'package:ebook_reader/sections/home/clippath.dart';
import 'package:ebook_reader/sections/home/genre.dart';

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
          MyClipPath(),
          GenreCard(),
          BookCards(),
          NewBooks(),
          const BookCards(),
          Padding(padding: EdgeInsets.only(bottom:30 ),
          )
        ],
      ),
    );
  }
}
