part of "home_bloc.dart";

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Service> services,
    @Default([]) List<Category> categories,
    @Default([]) List<ServiceProvider> serviceProviders,
    @Default([]) List<ProviderReview> serviceProviderReviews,
    @Default(HomeScreenStatus.initial) HomeScreenStatus status,
    String? errorMessage,
    @Default(false) bool isFavoriteService,
    @Default(false) bool isServiceProviderBookmarked,
    @Default("") String? customerName,
  }) = _HomeState;
}

enum HomeScreenStatus {
  initial,
  loading,
  loaded,
  failure,
}
