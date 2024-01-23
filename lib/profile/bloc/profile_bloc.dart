import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/repositories/authentication_repository/authentication_repository.dart";

part "profile_event.dart";
part "profile_state.dart";

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileSignOut>(_onSignOut);
  }
  final authenticationRepository = AuthenticationRepository();

  Future<void> _onSignOut(
    ProfileSignOut event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    logger.d(
      "Current user: ${authenticationRepository.currentUser}",
    );
    try {
      await authenticationRepository.logOut().then((value) {
        emit(const ProfileSuccess());
        logger
          ..d("User has signed out")
          ..d(
            "Current user: ${authenticationRepository.currentUser}",
          );
      });
    } on Exception catch (e) {
      emit(ProfileFailure(error: e.toString()));
    }
  }
}
