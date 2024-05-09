part of "in_app_review_bloc.dart";

@freezed
class InAppReviewState with _$InAppReviewState {
  const factory InAppReviewState.initial() = _Initial;
  const factory InAppReviewState.loadInProgress() = _LoadInProgress;
}
