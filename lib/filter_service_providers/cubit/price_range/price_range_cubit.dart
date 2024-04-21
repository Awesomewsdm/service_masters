import "package:service_masters/common/barrels.dart";

class PriceRangeCubit extends Cubit<PriceRangeState> {
  PriceRangeCubit() : super(const PriceRangeState());

  FutureOr<SfRangeValues> selectedPriceRange(SfRangeValues values) {
    emit(state.copyWith(selectedRangeValues: values));
    return values;
  }
}
