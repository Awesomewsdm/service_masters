import "package:service_masters/common/barrels.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomFadeRoute(page: SignInRoute.page),
        CustomFadeRoute(page: SignUpRoute.page),
        CustomFadeRoute(page: ChangePasswordRoute.page),
        CustomFadeRoute(page: ChatRoute.page),
        CustomFadeRoute(page: AllCategories.page),
        CustomFadeRoute(page: BookedServiceRoute.page),
        CustomFadeRoute(page: BookingSummaryRoute.page),
        CustomFadeRoute(page: BookServiceProviderRoute.page),
        CustomFadeRoute(page: ServiceProvidersRoute.page),
        CustomFadeRoute(page: ServiceProviderDetailsRoute.page),
        CustomFadeRoute(page: ServiceProviderPortfolioRoute.page),
        CustomFadeRoute(page: EnterEmailRoute.page),
        CustomFadeRoute(page: EnterPhoneRoute.page),
        CustomFadeRoute(page: VerificationRoute.page),
        CustomFadeRoute(page: EditProfileRoute.page),
        CustomFadeRoute(page: PaymentRoute.page),
        CustomFadeRoute(page: FavoriteServicesRoute.page),
        CustomFadeRoute(page: BookmarkedServiceProvidersRoute.page),
        CustomFadeRoute(page: VideoCallRoute.page),
        CustomFadeRoute(page: CallRoute.page),
        CustomFadeRoute(page: AllCategories.page),
        CustomFadeRoute(page: AboutRoute.page),
        CustomFadeRoute(page: ReviewAndRateProviderRoute.page),
        CustomFadeRoute(page: ReviewsAndRatingRoute.page),
        CustomFadeRoute(page: NotificationRoute.page),
        CustomFadeRoute(page: LodgeComplaintRoute.page),
        CustomFadeRoute(page: WelcomeRoute.page),
        CustomFadeRoute(page: PersonalDetailsRoute.page),
        CustomFadeRoute(page: PrivacyPolicyRoute.page),
        CustomFadeRoute(page: HistoryRoute.page),
        CustomFadeRoute(page: WalletBalnceRoute.page),
        CustomFadeRoute(page: FAQsRoute.page),
        CustomFadeRoute(page: TermasAndConditionsRoute.page),
        CustomFadeRoute(page: MapSearchRoute.page),
        CustomFadeRoute(page: SearchRoute.page),
        AutoRoute(
          page: DashboardRoute.page,
          guards: [
            RouteGuard(),
          ],
          initial: true,
          children: [
            CustomFadeRoute(
              page: HomeRoute.page,
            ),
            CustomFadeRoute(
              page: BookedServicesRoute.page,
            ),
            CustomFadeRoute(
              page: AllChatsRoute.page,
            ),
            CustomFadeRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
      ];
}
