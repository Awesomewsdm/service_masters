import "package:service_masters/common/barrels.dart";

part "service_provider.model.g.dart";
part "service_provider.model.freezed.dart";

@freezed
class ServiceProvider with _$ServiceProvider {
  const factory ServiceProvider({
    required String name,
    required String about,
    required String serviceType,
    required double rating,
    required double location,
    required bool isVerified,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "years_of_experience") required String yearsOfExperience,
    @JsonKey(name: "languages_spoken") required String languagesSpoken,
    @JsonKey(name: "profile_picture") String? profilePicture,
    @JsonKey(name: "provider_id") String? providerId,
    @JsonKey(name: "profession") String? profession,
  }) = _ServiceProvider;

  factory ServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderFromJson(json);
}
