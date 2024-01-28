import "package:freezed_annotation/freezed_annotation.dart";

part "service.model.freezed.dart";
part "service.model.g.dart";

@freezed
class Service with _$Service {
  factory Service({
    required String id,
    required String name,
    required String imageUrl,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
