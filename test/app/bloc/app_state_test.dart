// ignore_for_file: prefer_const_constructors
import "package:authentication_repository/authentication_repository.dart";
import "package:flutter_test/flutter_test.dart";
import "package:home_service_app/app/bloc/app_bloc.dart";
import "package:mocktail/mocktail.dart";

class MockUser extends Mock implements User {}

void main() {
  group("AppState", () {
    group("unauthenticated", () {
      test("has correct status", () {
        final state = AppState.unauthenticated();
        expect(state.status, AppStatus.unauthenticated);
        expect(state.user, User.empty);
      });
    });

    group("authenticated", () {
      test("has correct status", () {
        final user = MockUser();
        final state = AppState.authenticated(user);
        expect(state.status, AppStatus.authenticated);
        expect(state.user, user);
      });
    });
  });
}