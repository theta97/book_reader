import 'dart:convert';
import 'package:ebook_reader/models/book_model.dart';
import 'package:http/http.dart' as http;
// import 'package:filter_listview_example/model/book.dart';

class SearchBooksApi {
  static Future<List<Book>> getBooks(String query) async {
    final url = Uri.parse('https://10.0.2.2:7128/api/Books');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List books = json.decode(response.body);

      return books.map((json) => Book.fromJson(json)).where((book) {
        final titleLower = book.bookname.toLowerCase();
        // final authorLower = book.authorId.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
        //  ||
        // authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
