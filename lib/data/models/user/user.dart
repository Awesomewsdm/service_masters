import "package:equatable/equatable.dart";
import "package:json_annotation/json_annotation.dart";

part "user.g.dart"; // This is the generated file

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
@JsonSerializable()
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// The current user's email address.
  final String? email;

  /// The current user's id.
  final String id;

  /// The current user's name (display name).
  final String? name;

  /// Url for the current user's photo.
  final String? photo;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: "");

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];

  // Map<String, dynamic> toJson() => _$UserToJson(this);
}

// class JsonSerializableConverter implements JsonConverter<User, Map<String, dynamic>> {
//   const JsonSerializableConverter();

//   @override
//   User fromJson(Map<String, dynamic> json) => User.fromJson(json);

//   @override
//   Map<String, dynamic> toJson(User instance) => instance.toJson();
// }