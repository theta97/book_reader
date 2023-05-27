import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<List<Data>> fetchData() async {
//   var url = Uri.parse('https://10.0.2.2:7128/api/Books');
//   final response = await http.get(url);
//   if (response.statusCode == 200) {
//     List jsonResponse = json.decode(response.body);
//     return jsonResponse.map((data) => Data.fromJson(data)).toList();
//   } else {
//     throw Exception('Unexpected error occured!');
//   }
// }

// class Data {
//   final int bookId;
//   final int authorId;
//   final String bookname;
//   final String bookpic;

//   Data(
//       {required this.bookId,
//       required this.authorId,
//       required this.bookname,
//       required this.bookpic});

//   factory Data.fromJson(Map<String, dynamic> json) {
//     return Data(
//       bookId: json['bookId'],
//       authorId: json['authorId'],
//       bookname: json['bookname'],
//       bookpic: json['bookpic'],
//     );
//   }
// }

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
//   final List<Map<String, dynamic>> _allUsers = [];

//   // FILTER FUNCTIOn

//   void _runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allUsers;
//     } else {
//       results = _allUsers
//           .where((user) =>
//               user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               onChanged: (value) => _runFilter(value),
//               decoration: const InputDecoration(
//                   labelText: 'Search', suffixIcon: Icon(Icons.search)),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
}
