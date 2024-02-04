import "package:equatable/equatable.dart";
import "package:json_annotation/json_annotation.dart";

part "customer.g.dart";

/// [Customer.empty] represents an unauthenticated Customer.

@JsonSerializable()
class Customer extends Equatable {
  const Customer({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.profilePicture,
    this.phoneNumber,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  final String? email;

  final String id;
  final String? phoneNumber;
  final String? firstName;
  final String? lastName;
  final String? profilePicture;

  static const empty = Customer(id: "");

  bool get isEmpty => this == Customer.empty;

  bool get isNotEmpty => this != Customer.empty;

  @override
  List<Object?> get props => [email, id, firstName, lastName, profilePicture];

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  Customer copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? profilePicture,
    String? id,
    String? phoneNumber,
  }) {
    return Customer(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      profilePicture: profilePicture ?? this.profilePicture,
      email: email ?? this.email,
      id: this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  String toString() =>
      "Customer(firstName: $firstName, lastName: $lastName email: $email, profilePicture: $profilePicture)";
}
