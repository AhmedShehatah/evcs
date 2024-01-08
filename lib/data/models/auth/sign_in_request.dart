class SignInRequest {
  String? password;
  String? email;

  SignInRequest({this.password, this.email});

  factory SignInRequest.fromJson(Map<String, dynamic> json) => SignInRequest(
        password: json['password']?.toString(),
        email: json['email']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (password != null) 'password': password,
        if (email != null) 'email': email,
      };
}
