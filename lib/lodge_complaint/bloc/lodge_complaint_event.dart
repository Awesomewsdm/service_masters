part of "lodge_complaint_bloc.dart";

@freezed
class LodgeComplaintEvent with _$LodgeComplaintEvent {
  const factory LodgeComplaintEvent.subjectChanged(String subject) =
      _SubjectChanged;
  const factory LodgeComplaintEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory LodgeComplaintEvent.submitComplaint(
    String subject,
    String description,
  ) = _SubmitComplaint;
}
