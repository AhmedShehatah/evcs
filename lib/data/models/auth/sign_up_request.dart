class SignUpRequest {
  String? firstName;
  String? lastName;
  String? phone;
  String? password;
  String? email;

  SignUpRequest({
    this.firstName,
    this.lastName,
    this.phone,
    this.password,
    this.email,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
        firstName: json['first_name']?.toString(),
        lastName: json['last_name']?.toString(),
        phone: json['phone']?.toString(),
        password: json['password']?.toString(),
        email: json['email']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (firstName != null) 'first_name': firstName,
        if (lastName != null) 'last_name': lastName,
        if (phone != null) 'phone': phone,
        if (password != null) 'password': password,
        if (email != null) 'email': email,
      };
}
