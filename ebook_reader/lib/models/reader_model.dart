class Reader {
  final int id;
  final String username;
  final String email;
  final String password;
  final String profilepic;

  Reader(
      {required this.id,
      required this.username,
      required this.email,
      required this.password,
      required this.profilepic});

  factory Reader.fromJson(Map<String, dynamic> json) {
    return Reader(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      profilepic: json['profilepic'],
    );
  }
}
