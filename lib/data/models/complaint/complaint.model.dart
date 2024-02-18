import "package:freezed_annotation/freezed_annotation.dart";
import "package:service_masters/common/barrels.dart";

part "complaint.model.freezed.dart";
part "complaint.model.g.dart";

@freezed
class Complaint with _$Complaint {
  const factory Complaint({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
    @FirstNameConverter() required FirstName firstName,
    @LastNameConverter() required LastName lastName,
    @PhoneNumberConverter() required PhoneNumber phoneNumber,
    @EmailConverter() required Email email,
    @Default(false) bool isResolved,
  }) = _Complaint;

  factory Complaint.fromJson(Map<String, dynamic> json) =>
      _$ComplaintFromJson(json);
}
