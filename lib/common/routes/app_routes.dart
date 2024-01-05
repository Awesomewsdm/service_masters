import "package:authentication_repository/authentication_repository.dart";
import "package:auto_route/auto_route.dart";
import "package:home_service_app/app/bloc/app_bloc.dart";
import "package:home_service_app/common/routes/app_routes.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter implements AutoRouteGuard {
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (AppStatus.authenticated ==
            AppBloc(authenticationRepository: authenticationRepository)
                .state
                .status ||
        resolver.route.name == DashboardRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(SignInRoute());
    }
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: BookingsRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: ChangePasswordRoute.page),
        AutoRoute(page: AllChatsRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: AllCategories.page),
        AutoRoute(page: BookedServiceRoute.page),
        AutoRoute(page: ServiceProvidersRoute.page),
        AutoRoute(page: ServiceProviderDetailsRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: WelcomeRoute.page, initial: true),
      ];
}
