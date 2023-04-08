import 'dart:async';
import 'dart:convert';
import 'package:dilivery_app_new/API/customer_information.dart';
import 'package:dilivery_app_new/model/signInModel.dart';
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import '../model/signUpModel.dart';

class ApiServiceForSignup {
  static Future<SignupResponse> signup(Map<String, dynamic> body) async {
    const String URL = baseUrl + "customerSignup";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    print(res);
    if (res != 'null') {
      print(res);
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return SignupResponse.fromJson(jsonData);
      } catch (e) {}
    }
    return SignupResponse(message: 'An error occurred', id: null);
  }
}


class ApiServiceForSignIn {
  static Future<SignInResponse> signin(Map<String, dynamic> body) async {
    const String URL = baseUrl + "customerLogin";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;

    print(res);
    if (res != 'null') {
      print(res);
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("userId", jsonData["userId"].toString());
        prefs.setString("token", jsonData["token"].toString());
        ApiServiceForUserInfo.GetUserInfo();

        return SignInResponse.fromJson(jsonData);
      } catch (e) {}
    }
    return SignInResponse(message: 'An error occurred', );
  }
}



