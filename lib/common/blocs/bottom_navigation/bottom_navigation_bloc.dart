import "package:flutter_bloc/flutter_bloc.dart";
import "package:home_service_app/common/blocs/bottom_navigation/bottom_navigation_event.dart";
import "package:home_service_app/common/blocs/bottom_navigation/bottom_navigation_state.dart";

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(selectedIndex: 0));

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is NavigationTabSelected) {
      yield NavigationState(selectedIndex: event.selectedTab);
    }
  }
}
