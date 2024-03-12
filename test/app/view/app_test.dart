import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:service_masters/common/barrels.dart";

class Mockcustomer extends Mock implements Customer {}

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

void main() {
  group("App", () {
    late AuthenticationRepository authenticationRepository;
    late Customer customer;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      customer = Mockcustomer();
      when(() => authenticationRepository.customer).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(() => authenticationRepository.currentCustomer).thenReturn(customer);
      when(() => customer.isNotEmpty).thenReturn(true);
      when(() => customer.isEmpty).thenReturn(false);
      when(() => customer.email).thenReturn("test@gmail.com");
    });

    testWidgets("renders AppView", (tester) async {
      await tester.pumpWidget(
        App(authenticationRepository: authenticationRepository),
      );
      await tester.pump();
      expect(find.byType(App), findsOneWidget);
    });
  });

  group("AppView", () {
    late AuthenticationRepository authenticationRepository;
    late AppBloc appBloc;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      appBloc = MockAppBloc();
    });

    testWidgets("navigates to LoginPage when unauthenticated", (tester) async {
      when(() => appBloc.state).thenReturn(const AppState.unauthenticated());
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: authenticationRepository,
          child: MaterialApp(
            home: BlocProvider.value(
              value: appBloc,
              child: App(
                authenticationRepository: authenticationRepository,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(SignInScreen), findsOneWidget);
    });

    testWidgets("navigates to HomePage when authenticated", (tester) async {
      final customer = Mockcustomer();
      when(() => customer.email).thenReturn("test@gmail.com");
      when(() => appBloc.state).thenReturn(AppState.authenticated(customer));
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: authenticationRepository,
          child: MaterialApp(
            home: BlocProvider.value(
              value: appBloc,
              child: App(
                authenticationRepository: authenticationRepository,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
