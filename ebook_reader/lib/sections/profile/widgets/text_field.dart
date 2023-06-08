import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  AppTextField({Key? key,

    required this.textController,
    required this.hintText,
    required this.icon,
    this.isObscure=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin:EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),

          ]
      ),
      child: TextField(
        obscureText: isObscure?true:false,
        controller: textController,
        decoration: InputDecoration(
            fillColor: Colors.white54,
            filled: true,
            //hintText,
            hintText: hintText,
            // prefixIcon
            prefixIcon: Icon(icon, color:Color.fromARGB(255, 7, 7, 7)),
            //focusedBorder
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 0.0,
                  color:Colors.white,
                )
            ),
            //enabled Border
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 0.0,
                  color:Colors.white,
                )
            ),
            // enabledBorder
            //
            // border
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),

            )
        ),
      ),
    );
  }
}