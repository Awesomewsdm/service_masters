part of 'search_providers_bloc.dart';

@freezed
class SearchProvidersState with _$SearchProvidersState {
  const factory SearchProvidersState.initial() = _Initial;
  const factory SearchProvidersState.loadInProgress() = _LoadInProgress;
}