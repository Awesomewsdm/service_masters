import "package:service_masters/common/barrels.dart";

part "lodge_complaint_bloc.freezed.dart";
part "lodge_complaint_event.dart";
part "lodge_complaint_state.dart";

class LodgeComplaintBloc
    extends Bloc<LodgeComplaintEvent, LodgeComplaintState> {
  LodgeComplaintBloc()
      : super(
          const LodgeComplaintState(
            lodgeComplaintSubmissionStatus:
                LodgeComplaintSubmissionStatus.initial,
          ),
        ) {
    on<_SubjectChanged>(_onSubjectChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_SubmitComplaint>(_onSubmitComplaint);
  }

  FutureOr<void> _onSubjectChanged(
    _SubjectChanged event,
    Emitter<LodgeComplaintState> emit,
  ) {
    try {} catch (e) {}
  }

  FutureOr<void> _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<LodgeComplaintState> emit,
  ) {
    try {} catch (e) {}
  }

  FutureOr<void> _onSubmitComplaint(
    _SubmitComplaint event,
    Emitter<LodgeComplaintState> emit,
  ) async {
    emit(
      state.copyWith(
        lodgeComplaintSubmissionStatus: LodgeComplaintSubmissionStatus.loading,
      ),
    );
    try {} catch (e) {
      emit(
        state.copyWith(
          lodgeComplaintSubmissionStatus:
              LodgeComplaintSubmissionStatus.failure,
        ),
      );
    }
  }
}
