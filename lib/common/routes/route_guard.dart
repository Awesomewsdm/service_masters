import "package:auto_route/auto_route.dart";

class RouteGuard extends AutoRouteGuard {
  RouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        // should be called when the logic effecting this guard changes
        // e.g when the user is no longer authenticated
      }
    });
  }
  final AuthService authService;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.authenticated) return resolver.next();
    router.push(
      LoginRoute(
        onLoginCallback: (_) {
          resolver.next();
          router.removeLast();
        },
      ),
    );
  }
}
