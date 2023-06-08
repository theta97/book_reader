import 'package:ebook_reader/models/reader_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ProfilePage extends StatefulWidget {

   ProfilePage({super.key, });

   

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Center(
        child: GestureDetector(

          child: Center(
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Center(
                child: Text("Home page", style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF74beef),
                ),),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
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

                  ]
              ),
            ),
          ),
        ),
      ),
    );
   
  // return Scaffold(
  //     appBar: AppBar(actions: [
  //       TextButton(
  //           onPressed: () async {
  //             final SharedPreferences? prefs = await _prefs;
  //             prefs?.clear();
  //             Get.offAll(AuthScreen());
  //           },
  //           child: Text(
  //             'logout',
  //             style: TextStyle(color: Colors.white),
  //           ))
  //     ]),
  //     body: Center(
  //       child: Column(
  //         children: [
  //           Text('Welcome home'),
  //           TextButton(
  //               onPressed: () async {
  //                 final SharedPreferences? prefs = await _prefs;
  //                 print(prefs?.get('token'));
  //               },
  //               child: Text('print token'))
  //         ],
  //       ),
  //     ),
  //   );
  
  }
}
