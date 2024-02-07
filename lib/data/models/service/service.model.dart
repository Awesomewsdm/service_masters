import "package:freezed_annotation/freezed_annotation.dart";

part "service.model.freezed.dart";
part "service.model.g.dart";

@freezed
class Service with _$Service {
  factory Service({
    String? id,
    String? name,
    String? imageUrl,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
