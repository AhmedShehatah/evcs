class AddCarResponse {
  String? message;

  AddCarResponse({this.message});

  factory AddCarResponse.fromJson(Map<String, dynamic> json) => AddCarResponse(
        message: json['message']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'message': message,
      };
}
