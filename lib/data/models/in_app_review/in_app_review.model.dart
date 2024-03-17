import "package:freezed_annotation/freezed_annotation.dart";

part "in_app_review.model.freezed.dart";
part "in_app_review.model.g.dart";

@freezed
class InAppReview with _$InAppReview {
  factory InAppReview({
    required String id,
    required String userId,
    required String customerName,
    required String customerImageUrl,
    required double rating,
    required String review,
  }) = _InAppReview;

  factory InAppReview.fromJson(Map<String, dynamic> json) =>
      _$InAppReviewFromJson(json);
}
