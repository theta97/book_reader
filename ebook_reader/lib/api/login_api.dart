import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

login(email,password) async
  {

  savePref(int value, String name, String email, int id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

      preferences.setInt("value", value);
      preferences.setString("name", name);
      preferences.setString("email", email);
      preferences.setString("id", id.toString());
      preferences.commit();

  }
}