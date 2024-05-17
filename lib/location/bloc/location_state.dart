part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loadInProgress() = _LoadInProgress;
  const factory LocationState.loadSuccess({
    required Position position,
  }) = _LoadSuccess;
  const factory LocationState.loadFailure({
    required String message,
  }) = _LoadFailure;
}
