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
        resolver.route.name == HomeRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(SignInRoute());
    }
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: ChangePasswordRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: AllCategories.page),
        AutoRoute(page: BookedServiceRoute.page),
        AutoRoute(page: BookServiceProviderRoute.page),
        AutoRoute(page: ServiceProvidersRoute.page),
        AutoRoute(page: ServiceProviderDetailsRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: VideoCallRoute.page),
        AutoRoute(page: CallRoute.page),
        AutoRoute(page: AllCategories.page),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: ReviewAndRateProviderRoute.page),
        AutoRoute(page: ReviewsAndRatingRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: LodgeComplaintRoute.page),
        AutoRoute(
          page: WelcomeRoute.page,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
            ),
            AutoRoute(
              page: BookingsRoute.page,
            ),
            AutoRoute(
              page: AllChatsRoute.page,
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
      ];
}
