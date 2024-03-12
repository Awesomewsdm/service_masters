import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/verify_access_bloc/verify_access_event.dart";
import "package:service_masters/data/bloc/verify_access_bloc/verify_access_state.dart";

class VerifyAccessBloc extends Bloc<VerifyAccessEvent, VerifyAccessState> {
  VerifyAccessBloc()
      : super(
          const VerifyAccessState(
            isCodeValid: false,
          ),
        ) {
    on<CodeChangedEvent>((event, emit) {
      final isCodeValid = event.code.length == 6;
      final errorText = isCodeValid ? null : "Code must be 6 digits";
      emit(VerifyAccessState(isCodeValid: isCodeValid, errorText: errorText));
    });
  }
}
