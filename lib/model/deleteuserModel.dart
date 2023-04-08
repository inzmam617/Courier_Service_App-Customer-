class DeleteUserID {
  final String? message;
  final String? error;

  DeleteUserID({ this.error,this.message});

  factory DeleteUserID.fromJson(Map<String, dynamic> json) {
    if(json.containsKey('error')){
      return DeleteUserID(
        error: json['error'],
      );
    }
    return DeleteUserID(
      message: json['message'],
    );
  }
}