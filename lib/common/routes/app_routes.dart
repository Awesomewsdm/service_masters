import "package:auto_route/auto_route.dart";
import "package:home_service_app/common/routes/app_routes.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter implements AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // if(isAuthenticated || resolver.route.name == LoginRoute.name){

    //     resolver.next();
    // }else{
    //       resolver.redirect(LoginRoute(onResult:(didLogin)=> resolver.next(didLogin)))
    // }
  }
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: BookingsRoute.page),
      ];
}
