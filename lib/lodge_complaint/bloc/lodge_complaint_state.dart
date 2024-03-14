part of "lodge_complaint_bloc.dart";

@freezed
class LodgeComplaintState with _$LodgeComplaintState {
  const factory LodgeComplaintState({
    @Default(LodgeComplaintSubmissionStatus.initial)
    required LodgeComplaintSubmissionStatus lodgeComplaintSubmissionStatus,
  }) = _LodgeComplaintState;
}
