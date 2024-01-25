import "package:equatable/equatable.dart";
import "package:json_annotation/json_annotation.dart";

part "customer.g.dart";

/// [Customer.empty] represents an unauthenticated user.

@JsonSerializable()
class Customer extends Equatable {
  const Customer({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  final String? email;

  /// The current user's id.
  final String id;

  final String? name;
  final String? photo;

  static const empty = Customer(id: "");

  bool get isEmpty => this == Customer.empty;

  bool get isNotEmpty => this != Customer.empty;

  @override
  List<Object?> get props => [email, id, name, photo];

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  Customer copyWith({
    String? name,
    String? email,
    String? photo,
    String? id,
  }) {
    return Customer(
      name: name ?? this.name,
      photo: photo ?? this.photo,
      email: email ?? this.email,
      id: this.id,
    );
  }

  @override
  String toString() => "Customer(name: $name, email: $email, photo: $photo)";
}
