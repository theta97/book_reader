import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:ebook_reader/models/signup_model.dart';

import 'package:ebook_reader/sections/profile/widgets/text_field.dart';
import 'package:ebook_reader/data_class.dart';
import 'package:ebook_reader/screens/homenew.dart';

import '../../screens/profile.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();

    Future<void> _registration() async {
      String username = nameController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      SignUp signUpBody =
          SignUp(username: username, email: email, password: password);
      var provider = Provider.of<DataClass>(context, listen: false);
      await provider.postData(signUpBody);
      if (provider.isBack) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<DataClass>(
        builder: (context, data, child) {
          return data.loading
              ? Center(
                  child: Container(
                    child: SpinKitThreeBounce(
                      itemBuilder: (BuildContext context, int index) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: index.isEven ? Colors.red : Colors.green,
                          ),
                        );
                      },
                    ),
                  ),
                )
              : SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      //app logo
                      Container(
                        height: 100,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 80,
                          ),
                        ),
                      ),
                      //your name
                      AppTextField(
                          textController: nameController,
                          hintText: "UserName",
                          icon: Icons.person),
                      SizedBox(
                        height: 20,
                      ),
                      //your email
                      AppTextField(
                          textController: emailController,
                          hintText: "Email",
                          icon: Icons.email),
                      const SizedBox(
                        height: 20,
                      ),
                      //your password
                      AppTextField(
                          textController: passwordController,
                          hintText: "Password",
                          icon: Icons.password_sharp,
                          isObscure: true),
                      SizedBox(
                        height: 20,
                      ),

                      //your phone

                      SizedBox(
                        height: 20 + 20,
                      ),
                      //sign up button
                      GestureDetector(
                        onTap: () {
                          _registration();
                        },
                        child: Container(
                          height: 70,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 23),
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF74beef),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color:  Color(0xFF203A43),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4, -4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //tag line
                      RichText(
                          text: TextSpan(
                              text: "Have an account already?",
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 20))),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
