import "package:service_masters/common/barrels.dart";

class RouteGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(
      SignInRoute(),
    );
  }
}
