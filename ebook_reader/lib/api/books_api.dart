import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:ebook_reader/models/book_model.dart';

Future<List<Book>> fetchBook() async {
  var url = Uri.parse('https://10.0.2.2:7128/api/Books');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Book.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
