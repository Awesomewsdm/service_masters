import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersState extends Equatable {
  const FilterServiceProvidersState({
    required this.selectedRating,
    required this.selectedLanguages,
    required this.selectedLocations,
    // this.selectedPriceRange = const SfRangeValues(0, 100),
    this.query = "",
  });

  final String query;
  final int selectedRating;
  final List<String> selectedLanguages;
  final List<String> selectedLocations;
  // final SfRangeValues selectedPriceRange;

  @override
  List<Object?> get props => [
        query,
        selectedRating,
        selectedLanguages,
        selectedLocations,
        // selectedPriceRange,
      ];

  FilterServiceProvidersState copyWith({
    String? query,
    int? selectedRating,
    List<String>? selectedLanguages,
    List<String>? selectedLocations,
    // SfRangeValues? selectedPriceRange,
  }) {
    return FilterServiceProvidersState(
      query: query ?? this.query,
      selectedRating: selectedRating ?? this.selectedRating,
      selectedLanguages: selectedLanguages ?? this.selectedLanguages,
      selectedLocations: selectedLocations ?? this.selectedLocations,
      // selectedPriceRange: selectedPriceRange ?? this.selectedPriceRange,
    );
  }
}
