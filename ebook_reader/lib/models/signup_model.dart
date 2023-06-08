class User {
  // int id;
  String username;
  String email;



  User({
    // this.id, 
    required this.username,
    required this.email,
    });

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        // id: responseData['id'],
        username: responseData['username'],
        email: responseData['email'],
       
    );
  }
}