import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service_app/common/blocs/authentication/authentication_event.dart';
import 'package:home_service_app/common/blocs/authentication/authentication_state.dart';
import 'package:home_service_app/common/repositories/user_repository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc(this.userRepository) : super(AuthInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {
    if (event is AuthenticationStarted) {
      yield* _mapAuthenticationStartedToState();
    } else if (event is AuthenticationLoggedIn) {
      yield* _mapAuthenticationLoggedInToState();
    } else if (event is AuthenticationLoggedOut) {
      yield* _mapAuthenticationLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationStartedToState() async* {
    yield AuthLoading();

    try {
      final isSignedIn = await userRepository.isUserSignedIn();
      if (isSignedIn) {
        final user = await userRepository.getCurrentUser();
        yield AuthAuthenticated(user!.userID);
      } else {
        yield AuthUnauthenticated();
      }
    } catch (_) {
      yield AuthUnauthenticated();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedInToState() async* {
    final user = await userRepository.getCurrentUser();
    yield AuthAuthenticated(user!.userID);
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedOutToState() async* {
    yield AuthLoading();
    await userRepository.signOut();
    yield AuthUnauthenticated();
  }
}
