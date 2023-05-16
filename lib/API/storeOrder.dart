import 'dart:async';
import 'dart:convert';
import 'package:dilivery_app_new/API/customer_information.dart';
import 'package:dilivery_app_new/model/signInModel.dart';
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import '../model/signUpModel.dart';

class ApiServiceForStoreOrder {
  static Future<bool> storeOrder(Map<String, dynamic> body) async {
    const String URL = baseUrl + "storeOrders";
    final response = await http.post(Uri.parse(URL), headers: {"Content-Type": "application/json"}, body: json.encode(body));
    final String res = response.body;
    print(res);
    if (res != 'null') {
      print(res);
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        if(jsonData.containsKey('message')){
          return true;
        }
        else if(jsonData.containsKey('error')){
          return false;
    }
      } catch (e) {}
    }
    return false;
  }
}