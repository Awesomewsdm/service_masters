import "package:service_masters/common/barrels.dart";
import "package:service_masters/common/routes/route_guard.dart";

final AppBloc appBloc = AppBloc(
  authenticationRepository: AuthenticationRepository(),
);

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter {
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
        AutoRoute(page: ServiceProviderPortfolioRoute.page),
        AutoRoute(page: EnterEmailRoute.page),
        AutoRoute(page: EnterPhoneRoute.page),
        AutoRoute(page: VerificationRoute.page),
        AutoRoute(
          page: EditProfileRoute.page,
        ),
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
        AutoRoute(page: PrivacyPolicyRoute.page),
        AutoRoute(page: HistoryRoute.page),
        AutoRoute(page: WalletBalnceRoute.page),
        AutoRoute(page: FAQsRoute.page),
        AutoRoute(page: TermasAndConditionsRoute.page),
        AutoRoute(page: MapSearchRoute.page),
        AutoRoute(
          page: DashboardRoute.page,
          guards: [
            RouteGuard(
              appBloc,
            ),
          ],
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
