class DataModel {
  final int id;
  final String email;
  final String firstName;
  final String avatar;

  DataModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.avatar,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      avatar: json['avatar'],
    );
  }
}
