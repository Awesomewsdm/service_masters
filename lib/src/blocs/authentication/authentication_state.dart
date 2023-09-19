import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthenticationState {}

class AuthLoading extends AuthenticationState {}

class AuthAuthenticated extends AuthenticationState {
  final String userID;

  const AuthAuthenticated(this.userID);

  @override
  List<Object?> get props => [userID];
}

class AuthUnauthenticated extends AuthenticationState {}
