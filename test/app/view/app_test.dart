import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";
import "package:service_masters/common/barrels.dart";

class MockUser extends Mock implements User {}

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

void main() {
  group("App", () {
    late AuthenticationRepository authenticationRepository;
    late User user;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      user = MockUser();
      when(() => authenticationRepository.user).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(() => authenticationRepository.currentUser).thenReturn(user);
      when(() => user.isNotEmpty).thenReturn(true);
      when(() => user.isEmpty).thenReturn(false);
      when(() => user.email).thenReturn("test@gmail.com");
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
      final user = MockUser();
      when(() => user.email).thenReturn("test@gmail.com");
      when(() => appBloc.state).thenReturn(AppState.authenticated(user));
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
