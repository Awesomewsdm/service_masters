import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/data/models/user/user.dart";

class MockUser extends Mock implements User {}

void main() {
  group("AppState", () {
    group("unauthenticated", () {
      test("has correct status", () {
        const state = AppState.unauthenticated();
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
