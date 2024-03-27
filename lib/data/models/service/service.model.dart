import "package:freezed_annotation/freezed_annotation.dart";

part "service.model.g.dart";
part "service.model.freezed.dart";

@freezed
class Service with _$Service {
  const factory Service({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "service_name") required String serviceName,
    @JsonKey(name: "image_url") required String imageUrl,
    @Default(false) bool isFavorite,
    String? description,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
