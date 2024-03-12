import "package:service_masters/common/barrels.dart";

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
      "Current user: ${authenticationRepository.currentCustomer}",
    );
    try {
      await authenticationRepository.logOut().then((value) {
        emit(const ProfileSuccess());
        logger
          ..d("User has signed out")
          ..d(
            "Current user: ${authenticationRepository.currentCustomer}",
          );
      });
    } on Exception catch (e) {
      emit(ProfileFailure(error: e.toString()));
    }
  }
}
