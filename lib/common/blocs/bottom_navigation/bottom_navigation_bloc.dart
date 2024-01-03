import "package:flutter_bloc/flutter_bloc.dart";
import "package:home_service_app/common/blocs/bottom_navigation/bottom_navigation_event.dart";
import "package:home_service_app/common/blocs/bottom_navigation/bottom_navigation_state.dart";

class NavigationCubit extends Bloc<NavigationState> {
  NavigationCubit() : super(const NavigationState(0)) {
    // Register handlers using the 'on' method
    on<NavigationTabSelected>(_onNavigationTabSelected);
  }

  // Handler for NavigationTabSelected event
  void _onNavigationTabSelected(NavigationTabSelected event) {
    emit(NavigationState(event.tabIndex));
  }
}
