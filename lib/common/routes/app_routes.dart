import "package:auto_route/auto_route.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignInRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: PasswordResetRoute.page,
        ),
        AutoRoute(
          page: ProfileRoute.page,
        ),
        AutoRoute(
          page: ChangePasswordRoute.page,
        ),
        AutoRoute(
          page: LoadingRoute.page,
        ),
        AutoRoute(
          page: EditProfileRoute.page,
        ),
        AutoRoute(
          page: SecurityCheckRoute.page,
        ),
        AutoRoute(
          page: SetNewEmailRoute.page,
        ),
        AutoRoute(
          page: EnterEmailRoute.page,
        ),
        AutoRoute(
          page: VerifyAccessRoute.page,
        ),
        AutoRoute(
          page: SetNewPasswordRoute.page,
        ),
      ];
}
