import "package:service_masters/common/barrels.dart";

class PriceRangeState extends Equatable {
  const PriceRangeState({
    this.selectedRangeValues = const SfRangeValues(0.0, 100.0),
  });

  final SfRangeValues selectedRangeValues;
  @override
  List<Object?> get props => [selectedRangeValues];

  PriceRangeState copyWith({
    required SfRangeValues selectedRangeValues,
  }) {
    return PriceRangeState(
      selectedRangeValues: selectedRangeValues,
    );
  }
}
