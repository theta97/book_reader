class Book {
  final int bookId;
  final int authorId;
  final String bookname;
  final String bookpic;

  Book(
      {required this.bookId,
      required this.authorId,
      required this.bookname,
      required this.bookpic});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      bookId: json['bookId'],
      authorId: json['authorId'],
      bookname: json['bookname'],
      bookpic: json['bookpic'],
    );
  }
}
