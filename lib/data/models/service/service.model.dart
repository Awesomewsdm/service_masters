import "package:freezed_annotation/freezed_annotation.dart";

part "service.model.g.dart";

@JsonSerializable()
class Service {
  Service({
    required this.id,
    required this.serviceName,
    required this.imageUrl,
    this.description,
  });

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "service_name")
  final String serviceName;
  @JsonKey(name: "image_url")
  final String imageUrl;
  final String? description;

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}
