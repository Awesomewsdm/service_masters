import "package:service_masters/common/barrels.dart";
part "service_provider.model.g.dart";
part "service_provider.model.freezed.dart";

@freezed
class ServiceProvider with _$ServiceProvider {
  const factory ServiceProvider({
    required String about,
    required String location,
    required bool isVerified,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "skills_and_expertise")
    required List<String> skillsAndExpertise,
    @JsonKey(name: "years_of_experience") required String yearsOfExperience,
    @JsonKey(name: "languages_spoken") required List<String> languagesSpoken,
    required List<ProviderReview> providerReviews,
    bool? isBookedMarked,
    @JsonKey(name: "profile_photo") String? profilePhoto,
    @JsonKey(name: "provider_id") String? providerId,
    @JsonKey(name: "service_id") String? serviceId,
    @JsonKey(name: "service_name") String? serviceName,
    @JsonKey(name: "profession") String? profession,
  }) = _ServiceProvider;

  factory ServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderFromJson(json);
}
