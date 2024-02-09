import "package:service_masters/common/barrels.dart";

part "category.model.freezed.dart";
part "category.model.g.dart";

@freezed
class Category with _$Category {
  factory Category({
    @Default("") String id,
    @Default([]) List<Service> services,
    @Default("") String name,
    @Default("") String icon,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
