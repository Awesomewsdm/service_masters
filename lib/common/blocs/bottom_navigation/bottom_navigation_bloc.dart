import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/common/blocs/bottom_navigation/bottom_navigation_state.dart";

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit()
      : super(const BottomNavigationState(selectedIndex: 0));

  void updatePage(int index) {
    emit(state.copyWith(pageIndex: index));
  }
}
