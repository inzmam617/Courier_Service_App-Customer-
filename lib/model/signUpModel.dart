import 'dart:convert';
import 'package:http/http.dart' as http;

class SignupResponse {
  final String? message;
  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final String? createdAt;
  final String? updatedAt;
  final String? errorMessage;

  SignupResponse({
    this.message,
    this.id,
    this.name,
    this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.errorMessage
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) {

    if (json.containsKey('error')) {
      return SignupResponse(errorMessage: json['error']);
    }
    else{
      final userJson = json['user'] as Map<String, dynamic>;
      return SignupResponse(
        message: json['message'] ?? '',
        id: userJson['_id'] as String?,
        name: userJson['name'] as String?,
        email: userJson['email'] as String?,
        password: userJson['password'] as String?,
        createdAt: userJson['createdAt'] as String?,
        updatedAt: userJson['updatedAt'] as String?,
      );
    }

  }
}



