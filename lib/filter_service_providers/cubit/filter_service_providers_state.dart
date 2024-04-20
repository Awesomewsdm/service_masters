import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersState extends Equatable {
  const FilterServiceProvidersState({
    this.containerColor = Colors.white,
    this.query = "",
  });

  final String query;
  final Color containerColor;

  @override
  List<Object?> get props => [query, containerColor];

  FilterServiceProvidersState copyWith({
    String? query,
    Color? containerColor,
  }) {
    return FilterServiceProvidersState(
      query: query ?? this.query,
      containerColor: containerColor ?? this.containerColor,
    );
  }
}
