import "package:home_service_app/common/barrels.dart";

part "profile_event.dart";
part "profile_state.dart";

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
