// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:home_service_app/bookings/view/booked_services_screen.dart'
    as _i2;
import 'package:home_service_app/common/barrels.dart' as _i23;
import 'package:home_service_app/edit_profile/view/edit_profile_screen.dart'
    as _i3;
import 'package:home_service_app/home/view/home_screen.dart' as _i6;
import 'package:home_service_app/map_search/view/map_search_screen.dart' as _i7;
import 'package:home_service_app/notifications/view/notification_screen.dart'
    as _i8;
import 'package:home_service_app/onboarding/view/onboarding_screen.dart' as _i9;
import 'package:home_service_app/payment/view/payment_screen.dart' as _i10;
import 'package:home_service_app/privacy_policy/view/privacy_policy_screen.dart'
    as _i11;
import 'package:home_service_app/review_provider/views/review_provider_screen.dart'
    as _i12;
import 'package:home_service_app/reviews_and_ratings/view/reviews_and_rating_screen.dart'
    as _i13;
import 'package:home_service_app/search_providers/view/search_screen.dart'
    as _i14;
import 'package:home_service_app/service_categories/view/all_categories_screen.dart'
    as _i1;
import 'package:home_service_app/service_provider_details/views/service_provider_details_screen.dart'
    as _i15;
import 'package:home_service_app/service_provider_details/views/service_provider_portfolio.dart'
    as _i16;
import 'package:home_service_app/service_providers/view/service_providers_screen.dart'
    as _i17;
import 'package:home_service_app/sign_in/view/sign_in_screen.dart' as _i18;
import 'package:home_service_app/sign_up/view/sign_up_screen.dart' as _i19;
import 'package:home_service_app/verify_user/views/enter_email_address_screen.dart'
    as _i4;
import 'package:home_service_app/verify_user/views/enter_phone_number_screen.dart'
    as _i5;
import 'package:home_service_app/verify_user/views/verification_screen.dart'
    as _i20;
import 'package:home_service_app/welcome_user/view/welcome_screen.dart' as _i21;

abstract class $AppRouter extends _i22.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AllCategories.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllCategories(),
      );
    },
    BookingsRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BookingsScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EditProfileScreen(),
      );
    },
    EnterEmailRoute.name: (routeData) {
      final args = routeData.argsAs<EnterEmailRouteArgs>(
          orElse: () => const EnterEmailRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EnterEmailScreen(key: args.key),
      );
    },
    EnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPhoneRouteArgs>(
          orElse: () => const EnterPhoneRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EnterPhoneScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    MapSearchRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MapSearchScreen(),
      );
    },
    NofificationRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NofificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PaymentScreen(),
      );
    },
    PrivacyPolicy.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PrivacyPolicy(),
      );
    },
    ReviewProviderRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ReviewProviderScreen(),
      );
    },
    ReviewsAndRatingRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ReviewsAndRatingScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SearchScreen(),
      );
    },
    ServiceProviderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceProviderDetailsRouteArgs>(
          orElse: () => const ServiceProviderDetailsRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.ServiceProviderDetailsScreen(key: args.key),
      );
    },
    ServiceProviderPortfolio.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.ServiceProviderPortfolio(),
      );
    },
    ServiceProviders.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ServiceProviders(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.SignInScreen(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.SignUpScreen(key: args.key),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.VerificationScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllCategories]
class AllCategories extends _i22.PageRouteInfo<void> {
  const AllCategories({List<_i22.PageRouteInfo>? children})
      : super(
          AllCategories.name,
          initialChildren: children,
        );

  static const String name = 'AllCategories';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BookingsScreen]
class BookingsRoute extends _i22.PageRouteInfo<void> {
  const BookingsRoute({List<_i22.PageRouteInfo>? children})
      : super(
          BookingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EditProfileScreen]
class EditProfileRoute extends _i22.PageRouteInfo<void> {
  const EditProfileRoute({List<_i22.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EnterEmailScreen]
class EnterEmailRoute extends _i22.PageRouteInfo<EnterEmailRouteArgs> {
  EnterEmailRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          EnterEmailRoute.name,
          args: EnterEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterEmailRoute';

  static const _i22.PageInfo<EnterEmailRouteArgs> page =
      _i22.PageInfo<EnterEmailRouteArgs>(name);
}

class EnterEmailRouteArgs {
  const EnterEmailRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'EnterEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.EnterPhoneScreen]
class EnterPhoneRoute extends _i22.PageRouteInfo<EnterPhoneRouteArgs> {
  EnterPhoneRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          EnterPhoneRoute.name,
          args: EnterPhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterPhoneRoute';

  static const _i22.PageInfo<EnterPhoneRouteArgs> page =
      _i22.PageInfo<EnterPhoneRouteArgs>(name);
}

class EnterPhoneRouteArgs {
  const EnterPhoneRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'EnterPhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i22.PageRouteInfo<void> {
  const HomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MapSearchScreen]
class MapSearchRoute extends _i22.PageRouteInfo<void> {
  const MapSearchRoute({List<_i22.PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NofificationScreen]
class NofificationRoute extends _i22.PageRouteInfo<void> {
  const NofificationRoute({List<_i22.PageRouteInfo>? children})
      : super(
          NofificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NofificationRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingScreen]
class OnboardingRoute extends _i22.PageRouteInfo<void> {
  const OnboardingRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PaymentScreen]
class PaymentRoute extends _i22.PageRouteInfo<void> {
  const PaymentRoute({List<_i22.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PrivacyPolicy]
class PrivacyPolicy extends _i22.PageRouteInfo<void> {
  const PrivacyPolicy({List<_i22.PageRouteInfo>? children})
      : super(
          PrivacyPolicy.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicy';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ReviewProviderScreen]
class ReviewProviderRoute extends _i22.PageRouteInfo<void> {
  const ReviewProviderRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ReviewProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewProviderRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ReviewsAndRatingScreen]
class ReviewsAndRatingRoute extends _i22.PageRouteInfo<void> {
  const ReviewsAndRatingRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ReviewsAndRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsAndRatingRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SearchScreen]
class SearchRoute extends _i22.PageRouteInfo<void> {
  const SearchRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ServiceProviderDetailsScreen]
class ServiceProviderDetailsRoute
    extends _i22.PageRouteInfo<ServiceProviderDetailsRouteArgs> {
  ServiceProviderDetailsRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          ServiceProviderDetailsRoute.name,
          args: ServiceProviderDetailsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ServiceProviderDetailsRoute';

  static const _i22.PageInfo<ServiceProviderDetailsRouteArgs> page =
      _i22.PageInfo<ServiceProviderDetailsRouteArgs>(name);
}

class ServiceProviderDetailsRouteArgs {
  const ServiceProviderDetailsRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'ServiceProviderDetailsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.ServiceProviderPortfolio]
class ServiceProviderPortfolio extends _i22.PageRouteInfo<void> {
  const ServiceProviderPortfolio({List<_i22.PageRouteInfo>? children})
      : super(
          ServiceProviderPortfolio.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderPortfolio';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ServiceProviders]
class ServiceProviders extends _i22.PageRouteInfo<void> {
  const ServiceProviders({List<_i22.PageRouteInfo>? children})
      : super(
          ServiceProviders.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviders';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SignInScreen]
class SignInRoute extends _i22.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i22.PageInfo<SignInRouteArgs> page =
      _i22.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i19.SignUpScreen]
class SignUpRoute extends _i22.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i22.PageInfo<SignUpRouteArgs> page =
      _i22.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i20.VerificationScreen]
class VerificationRoute extends _i22.PageRouteInfo<void> {
  const VerificationRoute({List<_i22.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i21.WelcomeScreen]
class WelcomeRoute extends _i22.PageRouteInfo<void> {
  const WelcomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}
