import "package:equatable/equatable.dart";
import "package:json_annotation/json_annotation.dart";

part "user.g.dart";

/// [User.empty] represents an unauthenticated user.

@JsonSerializable()
class User extends Equatable {
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String? email;

  /// The current user's id.
  final String id;

  final String? name;
  final String? photo;

  static const empty = User(id: "");

  bool get isEmpty => this == User.empty;

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? name,
    String? email,
    String? photo,
    String? id,
  }) {
    return User(
      name: name ?? this.name,
      photo: photo ?? this.photo,
      email: email ?? this.email,
      id: this.id,
    );
  }

  @override
  String toString() => "User(name: $name, email: $email, photo: $photo)";
}

class JsonSerializableConverter
    implements JsonConverter<User, Map<String, dynamic>> {
  const JsonSerializableConverter();

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);

  @override
  Map<String, dynamic> toJson(User instance) => instance.toJson();
}
