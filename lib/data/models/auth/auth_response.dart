class AuthResponse {
  String? token;

  AuthResponse({this.token});

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        token: json['token']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (token != null) 'token': token,
      };
}
