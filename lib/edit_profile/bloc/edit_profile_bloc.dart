import "package:freezed_annotation/freezed_annotation.dart";
import "package:service_masters/common/barrels.dart";

part "edit_profile_bloc.freezed.dart";
part "edit_profile_event.dart";
part "edit_profile_state.dart";

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc()
      : super(
          const EditProfileState(),
        );
}
