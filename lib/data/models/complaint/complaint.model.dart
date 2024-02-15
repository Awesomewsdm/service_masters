import "package:service_masters/common/barrels.dart";

part "complaint.model.g.dart";

@freezed
class Complaint {
  const factory Complaint({
    @LastNameConverter() required LastName otherNames,
    @FirstNameConverter() required FirstName surname,
    @EmailConverter() required Email email,
    @PhoneNumberConverter() required PhoneNumber phoneNumber,
  }) = _Complaint;

  factory Complaint.fromJson(Map<String, dynamic> json) =>
      _$ComplaintFromJson(json);

  Map<String, dynamic> toJson() => _$ComplaintToJson(this);
}

// 77@hb&GmQVit@a8
typedef ComplaintRecord = ({
  String id,
  String subject,
  String description,
  DateTime createdAt,
});
