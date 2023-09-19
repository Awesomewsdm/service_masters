// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String username;
  final String password;
  final String fullName;
  final String email;
  final String userID;
  UserModel({
    required this.username,
    required this.password,
    required this.fullName,
    required this.email,
    required this.userID,
  });

  UserModel copyWith({
    String? username,
    String? password,
    String? fullName,
    String? email,
    String? userID,
  }) {
    return UserModel(
      username: username ?? this.username,
      password: password ?? this.password,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      userID: userID ?? this.userID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'fullName': fullName,
      'email': email,
      'userID': userID,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] as String,
      password: map['password'] as String,
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      userID: map['userID'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(username: $username, password: $password, fullName: $fullName, email: $email, userID: $userID)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.username == username &&
        other.password == password &&
        other.fullName == fullName &&
        other.email == email &&
        other.userID == userID;
  }

  @override
  int get hashCode {
    return username.hashCode ^
        password.hashCode ^
        fullName.hashCode ^
        email.hashCode ^
        userID.hashCode;
  }
}
