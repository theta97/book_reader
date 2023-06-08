import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:ebook_reader/models/reader_model.dart';

Future<List<Reader>> fetchReader() async {
  var url = Uri.parse('https://10.0.2.2:7128/api/Readers');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Reader.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

Future<Reader> createReader(String username, String email, String password) async {
  final response = await http.post(
    Uri.parse('https://10.0.2.2:7128/api/Readers'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'email': email,
      'password': password,

    }),
  );
if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Reader.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to register.');
  }
}