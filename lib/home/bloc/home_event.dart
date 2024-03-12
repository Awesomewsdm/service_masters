part of "home_bloc.dart";

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchHomeData({
    List<Service>? services,
    List<Category>? categories,
    List<ServiceProvider>? serviceProviders,
  }) = _FetchHomeDataEvent;

  const factory HomeEvent.favoriteServiceToggled({
    required String serviceId,
  }) = _FavoriteServiceToggledEvent;

  const factory HomeEvent.serviceProviderBookmarked({
    required String serviceProviderId,
  }) = _ServiceProviderBookmarkedEvent;
}
