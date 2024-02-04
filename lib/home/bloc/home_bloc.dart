import "package:service_masters/common/barrels.dart";

part "home_bloc.freezed.dart";
part "home_event.dart";
part "home_state.dart";

class HomeBloc extends Bloc<HomeState, HomeEvent> {
  HomeBloc(super.initialState);
}
