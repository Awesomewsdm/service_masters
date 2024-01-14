import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/common/barrels.dart";

class RouteGuard extends AutoRouteGuard {
  AppStatus state = AppStatus.unauthenticated;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (state == AppStatus.authenticated) {
      // if user is authenticated we continue
      resolver.next();
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirect(
        const SignInRoute(
            // onResult: (success) {
            //   // if success == true the navigation will be resumed
            //   // else it will be aborted
            //   resolver.next(success);
            // },
            ),
      );
    }
  }
}
//  switch (state) {
//       case AppStatus.authenticated:
//         return DashboardRoute();
//       case AppStatus.unauthenticated:
//         return SignInRoute();
//     }
