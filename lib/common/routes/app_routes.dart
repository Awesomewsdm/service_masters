import "package:auto_route/auto_route.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: HomeRoute.page),
        // AutoRoute(page: BookingsRoute.page),
      ];
}
