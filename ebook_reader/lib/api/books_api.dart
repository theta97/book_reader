import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:ebook_reader/models/book.dart';

Future<List<Data>> fetchData() async {
  var url = Uri.parse('https://10.0.2.2:7183/api/Books');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
