import "package:equatable/equatable.dart";
import "package:flutter/foundation.dart" show immutable;
import "package:home_service_app/authentication/bloc/auth_user.dart";

@immutable
abstract class AuthState {
  const AuthState({
    required this.isLoading,
    this.loadingText = "Please wait a moment",
  });
  final bool isLoading;
  final String? loadingText;
}

class AuthStateUninitialized extends AuthState {
  const AuthStateUninitialized({required super.isLoading});
}

class AuthStateRegistering extends AuthState {
  const AuthStateRegistering({
    required this.exception,
    required super.isLoading,
  });
  final Exception? exception;
}

class AuthStateForgotPassword extends AuthState {
  const AuthStateForgotPassword({
    required this.exception,
    required this.hasSentEmail,
    required super.isLoading,
  });
  final Exception? exception;
  final bool hasSentEmail;
}

class AuthStateLoggedIn extends AuthState {
  const AuthStateLoggedIn({
    required this.user,
    required super.isLoading,
  });
  final AuthUser user;
}

// class AuthStateNeedsVerification extends AuthState {
//   const AuthStateNeedsVerification({required super.isLoading});
// }

class AuthStateLoggedOut extends AuthState with EquatableMixin {
  const AuthStateLoggedOut({
    required this.exception,
    required super.isLoading,
    super.loadingText = null,
  });
  final Exception? exception;

  @override
  List<Object?> get props => [exception, isLoading];
}
