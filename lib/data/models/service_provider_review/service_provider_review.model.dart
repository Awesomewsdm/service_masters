import "package:service_masters/common/barrels.dart";

part "service_provider_review.model.freezed.dart";
part "service_provider_review.model.g.dart";

@freezed
class ServiceProviderReview with _$ServiceProviderReview {
  factory ServiceProviderReview({
    @JsonKey(name: "review_id") required String reviewId,
    @JsonKey(name: "reviewer_id") required String reviewerId,
    @JsonKey(name: "reviewer_name") required String reviewerName,
    @JsonKey(name: "reviewer_photo") required String reviewerPhoto,
    required String comment,
    required double rating,
    @JsonKey(name: "created_at") Timestamp createdAt,
  }) = _ServiceProviderReview;

  factory ServiceProviderReview.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderReviewFromJson(json);
}
