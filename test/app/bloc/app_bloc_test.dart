import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:multiple_result/multiple_result.dart";
import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/authentication/repository/authentication_repository.dart";
import "package:service_masters/common/models/customer/customer.dart";

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

class MockUser extends Mock implements Customer {}

void main() {
  group("AppBloc", () {
    final user = MockUser();
    late AuthenticationRepository authenticationRepository;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      when(() => authenticationRepository.customer).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(
        () => authenticationRepository.currentCustomer,
      ).thenReturn(Customer.empty);
    });

    test("initial state is unauthenticated when user is empty", () {
      expect(
        AppBloc(authenticationRepository: authenticationRepository).state,
        const AppState.unauthenticated(),
      );
    });

    group("UserChanged", () {
      blocTest<AppBloc, AppState>(
        "emits authenticated when user is not empty",
        setUp: () {
          when(() => user.isNotEmpty).thenReturn(true);
          when(() => authenticationRepository.customer).thenAnswer(
            (_) => Stream.value(user),
          );
        },
        build: () => AppBloc(
          authenticationRepository: authenticationRepository,
        ),
        seed: AppState.unauthenticated,
        expect: () => [AppState.authenticated(user)],
      );

      blocTest<AppBloc, AppState>(
        "emits unauthenticated when user is empty",
        setUp: () {
          when(() => authenticationRepository.customer).thenAnswer(
            (_) => Stream.value(Customer.empty),
          );
        },
        build: () => AppBloc(
          authenticationRepository: authenticationRepository,
        ),
        expect: () => [const AppState.unauthenticated()],
      );
    });

    group("LogoutRequested", () {
      blocTest<AppBloc, AppState>(
        "invokes logOut",
        setUp: () {
          when(
            () => authenticationRepository.logOut(),
          ).thenAnswer((_) async {
            return Future.value(const Result<void, String>.success(null));
          });
        },
        build: () => AppBloc(
          authenticationRepository: authenticationRepository,
        ),
        act: (bloc) => bloc.add(const AppLogoutRequested()),
        verify: (_) {
          verify(() => authenticationRepository.logOut()).called(1);
        },
      );
    });
  });
}
