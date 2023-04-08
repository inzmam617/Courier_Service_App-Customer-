class UserInfo {
  final String name;
  final String email;
  final String createdAt;
  final String updatedAt;


  UserInfo({
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      name: json['message']['name'],
      email: json['message']['email'],
        createdAt: json['message']['createdAt'],
      updatedAt : json['message']['updatedAt']
    );
  }
}