import "package:json_annotation/json_annotation.dart";

part "service_provider.model.g.dart";

@JsonSerializable()
class ServiceProvider {
  ServiceProvider({
    required this.id,
    required this.name,
    required this.serviceType,
    required this.imageUrl,
    required this.isBookedmarked,
  });

  factory ServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderFromJson(json);
  final String id;
  final String name;
  final String serviceType;
  final String imageUrl;
  final bool isBookedmarked;
  Map<String, dynamic> toJson() => _$ServiceProviderToJson(this);
}
