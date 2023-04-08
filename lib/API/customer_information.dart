import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http ;
import '../constant.dart';
import '../model/getUserModel.dart';

class ApiServiceForUserInfo {
  static Future<UserInfo> GetUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('userId').toString();
    String token = prefs.getString('token').toString();
    String URL = "${baseUrl}customers/$id";

    // print('id');
    // print(id);
    // print("token");

    // print(token);
    // print("url");
    // print(URL);
    final response = await http.get(Uri.parse(URL), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final String res = response.body;
    if (res != 'null') {
      try {
        // print(res);
        // await prefs.remove('riderId');
        // await prefs.remove('token');


        final jsonData = json.decode(res) as Map<String, dynamic>;
        prefs.setString("name", jsonData["message"]["name"]);
        prefs.setString("email", jsonData["message"]["email"]);

        return UserInfo.fromJson(jsonData);
      } catch (e) {
        print(e.toString());
      }
    }
    return UserInfo(name: '', email: '', createdAt: '', updatedAt: '');
  }
}