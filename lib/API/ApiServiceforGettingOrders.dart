import 'dart:convert';
import 'package:http/http.dart' as http;

import '../constant.dart';
import '../model/OrdersModel.dart';

class OrderApiService {
  static Future<List<Order>> getOrders() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      final orderList = jsonData['orders'] as List<dynamic>;

      return orderList.map((json) => Order.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch orders');
    }
  }
}
