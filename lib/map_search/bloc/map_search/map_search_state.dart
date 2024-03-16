part of 'map_search_bloc.dart';

@freezed
class MapSearchState with _$MapSearchState {
  const factory MapSearchState.initial() = _Initial;
  const factory MapSearchState.loadInProgress() = _LoadInProgress;
}