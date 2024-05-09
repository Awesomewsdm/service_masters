part of "in_app_review_bloc.dart";

@freezed
class InAppReviewEvent with _$InAppReviewEvent {
  const factory InAppReviewEvent.fetchAllReviews() = _FetchAllReviews;
  const factory InAppReviewEvent.rateProvider() = _RateProvider;
}
