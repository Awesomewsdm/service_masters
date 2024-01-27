import "package:freezed_annotation/freezed_annotation.dart";

part "in_app_review.freezed.dart";
part "in_app_review.g.dart";

@freezed
class InAppReview with _$InAppReview {
  factory InAppReview({
    required String id,
    required String userId,
    required String userName,
    required String userImageUrl,
    required double rating,
    required String review,
  }) = _InAppReview;

  factory InAppReview.fromJson(Map<String, dynamic> json) =>
      _$InAppReviewFromJson(json);
}
