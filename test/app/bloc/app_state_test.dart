import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/common/models/customer/customer.dart";

class MockCustomer extends Mock implements Customer {}

void main() {
  group("AppState", () {
    group("unauthenticated", () {
      test("has correct status", () {
        const state = AppState.unauthenticated();
        expect(state.status, AppStatus.unauthenticated);
        expect(state.customer, Customer.empty);
      });
    });

    group("authenticated", () {
      test("has correct status", () {
        final customer = MockCustomer();
        final state = AppState.authenticated(customer);
        expect(state.status, AppStatus.authenticated);
        expect(state.customer, customer);
      });
    });
  });
}
