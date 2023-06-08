import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:ebook_reader/models/signup_model.dart';

Future<http.Response?> register(SignUp data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("https://10.0.2.2:7128/api/Readers"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}