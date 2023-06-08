class SignUp {
  // final int id;
  final String username;
  final String email;
  final String password;
  // final String profilepic;

  SignUp(
      {
        // required this.id,
      required this.username,
      required this.email,
      required this.password,
      // required this.profilepic
      });

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data["username"] = username;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}