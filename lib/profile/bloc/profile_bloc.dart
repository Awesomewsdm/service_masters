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
    try {
      await authenticationRepository.logOut();
      emit(const ProfileSuccess());
    } on Exception catch (e) {
      emit(ProfileFailure(error: e.toString()));
    }
  }
}
