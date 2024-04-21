import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersCubit extends Cubit<FilterServiceProvidersState> {
  FilterServiceProvidersCubit()
      : super(const FilterServiceProvidersState(
          selectedRating: 0,
          selectedLanguages: [],
          selectedLocations: [],
        ));

  void filterServiceProviders(String query) {
    emit(state.copyWith(query: query));
  }

  FutureOr<void> selectRating(int rating) {
    emit(
      state.copyWith(
        selectedRating: rating == state.selectedRating ? null : rating,
      ),
    );
  }

  FutureOr<void> selectLanguages(String language) {
    final updatedLanguages = List<String>.from(state.selectedLanguages);

    if (updatedLanguages.contains(language)) {
      updatedLanguages.remove(language);
    } else {
      updatedLanguages.add(language);
    }

    emit(state.copyWith(selectedLanguages: updatedLanguages));
  }

  FutureOr<void> selectLocations(String location) {
    final updatedLocations = List<String>.from(state.selectedLocations);

    if (updatedLocations.contains(location)) {
      updatedLocations.remove(location);
    } else {
      updatedLocations.add(location);
    }

    emit(state.copyWith(selectedLocations: updatedLocations));
  }

  // void reset() {
  //   emit(const FilterServiceProvidersState(selectedRating: 0));
  // }
}
