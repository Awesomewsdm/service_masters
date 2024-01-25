import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/data/models/customer/customer.dart";

class MockCustomer extends Mock implements Customer {}

void main() {
  group("AppState", () {
    group("unauthenticated", () {
      test("has correct status", () {
        const state = AppState.unauthenticated();
        expect(state.status, AppStatus.unauthenticated);
        expect(state.user, Customer.empty);
      });
    });

    group("authenticated", () {
      test("has correct status", () {
        final Customer = MockCustomer();
        final state = AppState.authenticated(Customer);
        expect(state.status, AppStatus.authenticated);
        expect(state.user, Customer);
      });
    });
  });
}
