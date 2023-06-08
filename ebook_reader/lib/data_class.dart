import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'api/signup_api.dart';
import 'models/signup_model.dart';

class DataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postData(SignUp body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 200) {
      isBack = true;

    }
    loading = false;
    notifyListeners();
  }
}