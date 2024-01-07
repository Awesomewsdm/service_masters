import "package:home_service_app/common/barrels.dart";

class RouteGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(
      SignInRoute(),
    );
  }
}
