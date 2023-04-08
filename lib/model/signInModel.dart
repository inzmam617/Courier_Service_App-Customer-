
class SignInResponse {
  final String? userId;
  final String? token;
  final String? message;

  SignInResponse({ this.userId, this.token,this.message});

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('userId')) {
      return SignInResponse(
        userId: json['userId'],
        token: json['token'],
      );
    } else {
      return SignInResponse(
        message: json['message'],
      );
    }
  }
}



