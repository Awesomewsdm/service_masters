import "package:service_masters/common/barrels.dart";

class RouteGuard extends AutoRouteGuard {
  // AppStatus state;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {}
}
//  switch (state) {
//       case AppStatus.authenticated:
//         return DashboardRoute();
//       case AppStatus.unauthenticated:
//         return SignInRoute();
//     }