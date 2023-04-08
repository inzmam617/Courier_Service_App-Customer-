import 'dart:convert';

import 'package:dilivery_app_new/constant.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../model/logOutModel.dart';

class ApiServiceForLogout{
 static Future<LogOutModel> logout () async {
  final prefs = await SharedPreferences.getInstance();
  String userId = prefs.getString("userId").toString();
  String token = prefs.getString("token").toString();
  // print(userId);
  // print(token);

  String URL =baseUrl + "customerLogout/" + userId;
  // print(URL);
   final response = await http.post(Uri.parse(URL) ,  headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
   });
   final String res = response.body;
   if(res != "null"){
    try {
     prefs.remove("name");
     prefs.remove("email");
     prefs.remove("userId");
     prefs.remove("token");
     final jsonData = json.decode(res) as Map<String , dynamic>;
     return LogOutModel.fromJson(jsonData);
    }
    catch(E){print(E);}
   }
  

  return LogOutModel(message: 'An error occurred', );

 }


}