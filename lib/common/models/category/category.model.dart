import "package:service_masters/common/barrels.dart";

part "category.model.g.dart";

@JsonSerializable()
class Category {
  Category({
    required this.id,
    required this.categoryName,
    required this.imageUrl,
    required this.services,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "name")
  final String categoryName;
  @JsonKey(name: "icon")
  final String imageUrl;
  final List<Map<String, dynamic>> services;

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
