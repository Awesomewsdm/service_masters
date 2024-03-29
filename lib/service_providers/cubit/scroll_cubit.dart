import "package:service_masters/common/barrels.dart";

class ScrollCubit extends Cubit<ScrollState> {
  ScrollCubit() : super(ScrollInitial());

  void updateScroll(BuildContext context, double offset) {
    if (offset > (context.screenWidth / 2.5 - kToolbarHeight)) {
      emit(SliverAppBarExpanded());
    } else {
      emit(SliverAppBarCollapsed());
    }
  }
}
