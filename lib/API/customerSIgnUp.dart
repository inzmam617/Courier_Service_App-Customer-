import 'dart:async';
import 'dart:convert';
import "package:http/http.dart" as http;

import '../constant.dart';
import '../model/signUpModel.dart';

class ApiServiceForSignup {
  static Future<SignupResponse> signup(Map<String, dynamic> body) async {
    const String URL = baseUrl + "customerSignup";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    print(res);
    if (res != 'null') {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return SignupResponse.fromJson(jsonData);
      } catch (e) {}
    }
    return SignupResponse(message: 'An error occurred', id: null);
  }
}



