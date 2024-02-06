import "package:service_masters/common/barrels.dart";

class RouteGuard extends AutoRouteGuard {
  RouteGuard();
  final authenticationRepository = getIt<AuthenticationRepository>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authenticationRepository.currentCustomer.isNotEmpty) {
      resolver.next();
    } else {
      resolver.redirect(const SignInRoute());
    }
  }
}
