import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersCubit extends Cubit<FilterServiceProvidersState> {
  FilterServiceProvidersCubit() : super(const FilterServiceProvidersState());

  void filterServiceProviders(String query) {
    emit(state.copyWith(query: query));
  }

  FutureOr<void> changeContainerColor(Color color) {
    emit(state.copyWith(containerColor: color));
  }
}
