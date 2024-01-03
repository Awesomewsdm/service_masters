import "package:home_service_app/app/bloc/app_bloc.dart";
import "package:home_service_app/common/barrels.dart";

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [SignInScreen.page()];
    case AppStatus.unauthenticated:
      return [BottomNav.page()];
  }
}
