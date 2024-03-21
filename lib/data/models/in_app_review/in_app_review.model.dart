import "package:service_masters/common/barrels.dart";

part "in_app_review.model.freezed.dart";
part "in_app_review.model.g.dart";

@freezed
class InAppReview with _$InAppReview {
  factory InAppReview({
    @JsonKey(name: "review_id") required String reviewId,
    @JsonKey(name: "reviewer_id") required String reviewerId,
    @JsonKey(name: "reviewer_name") required String reviewerName,
    @JsonKey(name: "reviewer_photo") required String reviewerPhoto,
    required String comment,
    required double rating,
    @JsonKey(name: "created_at") required Timestamp createdAt,
  }) = _InAppReview;

  factory InAppReview.fromJson(Map<String, dynamic> json) =>
      _$InAppReviewFromJson(json);
}
