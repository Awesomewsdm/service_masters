import "package:freezed_annotation/freezed_annotation.dart";

part "service.model.freezed.dart";
part "service.model.g.dart";

@freezed
class Service with _$Service {
  factory Service({
    @Default("") String id,
    @Default("") String serviceName,
    @Default("") String imageUrl,
    @Default("") String description,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
