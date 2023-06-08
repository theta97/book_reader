class Data {
  final int bookId;
  final int authorId;
  final String bookname;
  final String bookpic;

  Data(
      {required this.bookId,
      required this.authorId,
      required this.bookname,
      required this.bookpic});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      bookId: json['bookId'],
      authorId: json['authorId'],
      bookname: json['bookname'],
      bookpic: json['bookpic'],
    );
  }
}
