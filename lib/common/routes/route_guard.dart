import "package:get_it/get_it.dart";
import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/common/barrels.dart";

class RouteGuard extends AutoRouteGuard {
  RouteGuard(this.appBloc);

  final AppBloc appBloc;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final state = appBloc.state.status;
    if (state == AppStatus.authenticated) {
      // if user is authenticated we continue
      resolver.next();
    } else {
      // we redirect the user to our login page
      resolver.redirect(const SignInRoute());
    }
  }
}
