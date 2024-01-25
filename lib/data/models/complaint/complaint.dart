import "package:service_masters/common/barrels.dart";

part "complaint.g.dart";

@JsonSerializable()
class Complaint {
  Complaint({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  factory Complaint.fromJson(Map<String, dynamic> json) =>
      _$ComplaintFromJson(json);
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  Map<String, dynamic> toJson() => _$ComplaintToJson(this);

  Complaint copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
  }) {
    return Complaint(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
