import "package:service_masters/common/barrels.dart";

part "category.model.freezed.dart";
part "category.model.g.dart";

@freezed
class Category with _$Category {
  factory Category({
    required String id,
    required String name,
    required String icon,
    required List<Service> services,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
