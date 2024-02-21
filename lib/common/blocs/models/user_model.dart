// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert";

class UsersModel {
  final String username;
  final String password;
  final String fullName;
  final String email;
  final String userID;
  UsersModel({
    required this.username,
    required this.password,
    required this.fullName,
    required this.email,
    required this.userID,
  });

  UsersModel copyWith({
    String? username,
    String? password,
    String? fullName,
    String? email,
    String? userID,
  }) {
    return UsersModel(
      username: username ?? this.username,
      password: password ?? this.password,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      userID: userID ?? this.userID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "username": username,
      "password": password,
      "fullName": fullName,
      "email": email,
      "userID": userID,
    };
  }

  factory UsersModel.fromMap(Map<String, dynamic> map) {
    return UsersModel(
      username: map["username"] as String,
      password: map["password"] as String,
      fullName: map["fullName"] as String,
      email: map["email"] as String,
      userID: map["userID"] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsersModel.fromJson(String source) =>
      UsersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return "UserModel(username: $username, password: $password, fullName: $fullName, email: $email, userID: $userID)";
  }
}
