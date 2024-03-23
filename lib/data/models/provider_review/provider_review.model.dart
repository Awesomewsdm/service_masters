import "package:service_masters/common/barrels.dart";

part "provider_review.model.freezed.dart";
part "provider_review.model.g.dart";

@freezed
class ProviderReview with _$ProviderReview {
  factory ProviderReview({
    @JsonKey(name: "review_id") required String reviewId,
    @JsonKey(name: "reviewer_id") required String reviewerId,
    @JsonKey(name: "reviewer_name") required String reviewerName,
    @JsonKey(name: "reviewer_photo") required String reviewerPhoto,
    required String comment,
    required double rating,
    @TimestampConverter() @JsonKey(name: "created_at") createdAt,
  }) = _ProviderReview;

  factory ProviderReview.fromJson(Map<String, dynamic> json) =>
      _$ProviderReviewFromJson(json);
}

class TimestampConverter implements JsonConverter<Timestamp, int> {
  const TimestampConverter();

  @override
  Timestamp fromJson(int json) => Timestamp.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(Timestamp object) => object.millisecondsSinceEpoch;
}
