import '../constant.dart';
import '../model/forgotPassModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServiceForgotPassword {


  static Future<ForgotPasswordModel> sendEmail(String email) async {
    const String URL = baseUrl + "forgot-passwordc/email";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode({"email" : email}));
    final String res = response.body;

    print(res);
    if (res != 'null') {
      print(res);
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return ForgotPasswordModel.fromJson(jsonData);
      } catch (e) {}
    }
    return ForgotPasswordModel(message: 'An error occurred', );
  }
  static Future<ForgotPasswordModel> verifyCode(Map<String,dynamic> body) async {
    const String URL = baseUrl + "forgot-passwordc/code";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;

    print(res);
    if (res != 'null') {
      print(res);
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return ForgotPasswordModel.fromJson(jsonData);
      } catch (e) {}
    }
    return ForgotPasswordModel(message: 'An error occurred', );
  }
  static Future<ForgotPasswordModel> updatePass(Map<String,dynamic> body) async {
    const String URL = baseUrl + "forgot-passwordc/password";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;

    print(res);
    if (res != 'null') {
      print(res);
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return ForgotPasswordModel.fromJson(jsonData);
      } catch (e) {}
    }
    return ForgotPasswordModel(message: 'An error occurred', );
  }

}
