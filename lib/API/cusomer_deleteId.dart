import 'dart:convert';
import 'package:dilivery_app_new/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../model/deleteuserModel.dart';

class ApiServiceForDeleteUserId{
  static Future  <DeleteUserID> deleteuser() async{
    final prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("userId").toString();
    String token = prefs.getString("token").toString();


    final URL = baseUrl + "deleteCustomer/" + userId;
    final respone = await http.post(Uri.parse(URL) , headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    final String res = respone.body;
    if(res != "null"){
      try{
        prefs.remove("name");
        prefs.remove("email");
        prefs.remove("userId");
        prefs.remove("token");
        final jsonData = json.decode(res) as Map<String ,dynamic> ;
        return DeleteUserID.fromJson(jsonData);
      }
      catch (e){
        print(e);
      }
    }


    return DeleteUserID (message: 'An error occurred');

  }
}