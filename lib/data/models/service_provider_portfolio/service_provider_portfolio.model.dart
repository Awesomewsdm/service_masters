import "package:service_masters/common/barrels.dart";

part "service_provider_portfolio.model.freezed.dart";
part "service_provider_portfolio.model.g.dart";

@freezed
class ServiceProviderPortfolio with _$ServiceProviderPortfolio {
  factory ServiceProviderPortfolio({
    @JsonKey(name: "project_id") required String projectId,
    @JsonKey(name: "project_name") required String projectName,
    required String description,
    required List<dynamic> images,
  }) = _ServiceProviderPortfolio;

  factory ServiceProviderPortfolio.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderPortfolioFromJson(json);
}
