// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i33;
import 'package:service_masters/about_app/view/about_screen.dart' as _i1;
import 'package:service_masters/app/view/dashboard_screen.dart' as _i10;
import 'package:service_masters/bookings/view/book_service_provider.dart'
    as _i4;
import 'package:service_masters/bookings/view/booked_service_screen.dart'
    as _i5;
import 'package:service_masters/bookings/view/booked_services_screen.dart'
    as _i6;
import 'package:service_masters/change_password/view/change_password_screen.dart'
    as _i8;
import 'package:service_masters/chat/view/all_chats_screen.dart' as _i3;
import 'package:service_masters/chat/view/chat_screen.dart' as _i9;
import 'package:service_masters/common/barrels.dart' as _i34;
import 'package:service_masters/edit_profile/view/edit_profile_screen.dart'
    as _i11;
import 'package:service_masters/home/view/home_screen.dart' as _i14;
import 'package:service_masters/lodge_complaint/view/lodge_complaint_screen.dart'
    as _i15;
import 'package:service_masters/map_search/view/map_search_screen.dart' as _i16;
import 'package:service_masters/notifications/view/notification_screen.dart'
    as _i17;
import 'package:service_masters/onboarding/view/onboarding_screen.dart' as _i18;
import 'package:service_masters/payment/view/payment_screen.dart' as _i19;
import 'package:service_masters/privacy_policy/view/privacy_policy_screen.dart'
    as _i20;
import 'package:service_masters/profile/view/profile_screen.dart' as _i21;
import 'package:service_masters/reviews_and_ratings/view/review_and_rate_provider_screen.dart'
    as _i22;
import 'package:service_masters/reviews_and_ratings/view/reviews_and_rating_screen.dart'
    as _i23;
import 'package:service_masters/search_providers/view/search_screen.dart'
    as _i24;
import 'package:service_masters/service_categories/view/all_categories_screen.dart'
    as _i2;
import 'package:service_masters/service_provider_details/views/service_provider_details_screen.dart'
    as _i25;
import 'package:service_masters/service_provider_details/views/service_provider_portfolio.dart'
    as _i26;
import 'package:service_masters/service_providers/view/service_providers_screen.dart'
    as _i27;
import 'package:service_masters/sign_in/view/sign_in_screen.dart' as _i28;
import 'package:service_masters/sign_up/view/sign_up_screen.dart' as _i29;
import 'package:service_masters/verify_user/views/enter_email_address_screen.dart'
    as _i12;
import 'package:service_masters/verify_user/views/enter_phone_number_screen.dart'
    as _i13;
import 'package:service_masters/verify_user/views/verification_screen.dart'
    as _i30;
import 'package:service_masters/video_call/view/video_call_screen.dart' as _i31;
import 'package:service_masters/voice_call/view/voice_call_screen.dart' as _i7;
import 'package:service_masters/welcome_user/view/welcome_screen.dart' as _i32;

abstract class $AppRouter extends _i33.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i33.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    AllCategories.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllCategories(),
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllChatsScreen(),
      );
    },
    BookServiceProviderRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BookServiceProviderScreen(),
      );
    },
    BookedServiceRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookedServiceScreen(),
      );
    },
    BookingsRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BookingsScreen(),
      );
    },
    CallRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CallScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChangePasswordScreen(key: args.key),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ChatScreen(
          user: args.user,
          key: args.key,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DashboardScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.EditProfileScreen(),
      );
    },
    EnterEmailRoute.name: (routeData) {
      final args = routeData.argsAs<EnterEmailRouteArgs>(
          orElse: () => const EnterEmailRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.EnterEmailScreen(key: args.key),
      );
    },
    EnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPhoneRouteArgs>(
          orElse: () => const EnterPhoneRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.EnterPhoneScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.HomeScreen(),
      );
    },
    LodgeComplaintRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.LodgeComplaintScreen(),
      );
    },
    MapSearchRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.MapSearchScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.PaymentScreen(),
      );
    },
    PrivacyPolicy.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.PrivacyPolicy(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ProfileScreen(),
      );
    },
    ReviewAndRateProviderRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ReviewAndRateProviderScreen(),
      );
    },
    ReviewsAndRatingRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ReviewsAndRatingScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.SearchScreen(),
      );
    },
    ServiceProviderDetailsRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ServiceProviderDetailsScreen(),
      );
    },
    ServiceProviderPortfolioRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.ServiceProviderPortfolioScreen(),
      );
    },
    ServiceProvidersRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.ServiceProvidersScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.SignUpScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.VerificationScreen(),
      );
    },
    VideoCallRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.VideoCallScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i33.PageRouteInfo<void> {
  const AboutRoute({List<_i33.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllCategories]
class AllCategories extends _i33.PageRouteInfo<void> {
  const AllCategories({List<_i33.PageRouteInfo>? children})
      : super(
          AllCategories.name,
          initialChildren: children,
        );

  static const String name = 'AllCategories';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllChatsScreen]
class AllChatsRoute extends _i33.PageRouteInfo<void> {
  const AllChatsRoute({List<_i33.PageRouteInfo>? children})
      : super(
          AllChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllChatsRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BookServiceProviderScreen]
class BookServiceProviderRoute extends _i33.PageRouteInfo<void> {
  const BookServiceProviderRoute({List<_i33.PageRouteInfo>? children})
      : super(
          BookServiceProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookServiceProviderRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BookedServiceScreen]
class BookedServiceRoute extends _i33.PageRouteInfo<void> {
  const BookedServiceRoute({List<_i33.PageRouteInfo>? children})
      : super(
          BookedServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookedServiceRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BookingsScreen]
class BookingsRoute extends _i33.PageRouteInfo<void> {
  const BookingsRoute({List<_i33.PageRouteInfo>? children})
      : super(
          BookingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CallScreen]
class CallRoute extends _i33.PageRouteInfo<void> {
  const CallRoute({List<_i33.PageRouteInfo>? children})
      : super(
          CallRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChangePasswordScreen]
class ChangePasswordRoute extends _i33.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i33.PageInfo<ChangePasswordRouteArgs> page =
      _i33.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.ChatScreen]
class ChatRoute extends _i33.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    required _i34.UserModel user,
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            user: user,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i33.PageInfo<ChatRouteArgs> page =
      _i33.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    required this.user,
    this.key,
  });

  final _i34.UserModel user;

  final _i34.Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i10.DashboardScreen]
class DashboardRoute extends _i33.PageRouteInfo<void> {
  const DashboardRoute({List<_i33.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EditProfileScreen]
class EditProfileRoute extends _i33.PageRouteInfo<void> {
  const EditProfileRoute({List<_i33.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i12.EnterEmailScreen]
class EnterEmailRoute extends _i33.PageRouteInfo<EnterEmailRouteArgs> {
  EnterEmailRoute({
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          EnterEmailRoute.name,
          args: EnterEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterEmailRoute';

  static const _i33.PageInfo<EnterEmailRouteArgs> page =
      _i33.PageInfo<EnterEmailRouteArgs>(name);
}

class EnterEmailRouteArgs {
  const EnterEmailRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'EnterEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.EnterPhoneScreen]
class EnterPhoneRoute extends _i33.PageRouteInfo<EnterPhoneRouteArgs> {
  EnterPhoneRoute({
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          EnterPhoneRoute.name,
          args: EnterPhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterPhoneRoute';

  static const _i33.PageInfo<EnterPhoneRouteArgs> page =
      _i33.PageInfo<EnterPhoneRouteArgs>(name);
}

class EnterPhoneRouteArgs {
  const EnterPhoneRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'EnterPhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.HomeScreen]
class HomeRoute extends _i33.PageRouteInfo<void> {
  const HomeRoute({List<_i33.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i15.LodgeComplaintScreen]
class LodgeComplaintRoute extends _i33.PageRouteInfo<void> {
  const LodgeComplaintRoute({List<_i33.PageRouteInfo>? children})
      : super(
          LodgeComplaintRoute.name,
          initialChildren: children,
        );

  static const String name = 'LodgeComplaintRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i16.MapSearchScreen]
class MapSearchRoute extends _i33.PageRouteInfo<void> {
  const MapSearchRoute({List<_i33.PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i17.NotificationScreen]
class NotificationRoute extends _i33.PageRouteInfo<void> {
  const NotificationRoute({List<_i33.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i18.OnboardingScreen]
class OnboardingRoute extends _i33.PageRouteInfo<void> {
  const OnboardingRoute({List<_i33.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i19.PaymentScreen]
class PaymentRoute extends _i33.PageRouteInfo<void> {
  const PaymentRoute({List<_i33.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i20.PrivacyPolicy]
class PrivacyPolicy extends _i33.PageRouteInfo<void> {
  const PrivacyPolicy({List<_i33.PageRouteInfo>? children})
      : super(
          PrivacyPolicy.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicy';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ProfileScreen]
class ProfileRoute extends _i33.PageRouteInfo<void> {
  const ProfileRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ReviewAndRateProviderScreen]
class ReviewAndRateProviderRoute extends _i33.PageRouteInfo<void> {
  const ReviewAndRateProviderRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ReviewAndRateProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewAndRateProviderRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ReviewsAndRatingScreen]
class ReviewsAndRatingRoute extends _i33.PageRouteInfo<void> {
  const ReviewsAndRatingRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ReviewsAndRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsAndRatingRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i24.SearchScreen]
class SearchRoute extends _i33.PageRouteInfo<void> {
  const SearchRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i25.ServiceProviderDetailsScreen]
class ServiceProviderDetailsRoute extends _i33.PageRouteInfo<void> {
  const ServiceProviderDetailsRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ServiceProviderDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderDetailsRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i26.ServiceProviderPortfolioScreen]
class ServiceProviderPortfolioRoute extends _i33.PageRouteInfo<void> {
  const ServiceProviderPortfolioRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ServiceProviderPortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderPortfolioRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i27.ServiceProvidersScreen]
class ServiceProvidersRoute extends _i33.PageRouteInfo<void> {
  const ServiceProvidersRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ServiceProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProvidersRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i28.SignInScreen]
class SignInRoute extends _i33.PageRouteInfo<void> {
  const SignInRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i29.SignUpScreen]
class SignUpRoute extends _i33.PageRouteInfo<void> {
  const SignUpRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i30.VerificationScreen]
class VerificationRoute extends _i33.PageRouteInfo<void> {
  const VerificationRoute({List<_i33.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i31.VideoCallScreen]
class VideoCallRoute extends _i33.PageRouteInfo<void> {
  const VideoCallRoute({List<_i33.PageRouteInfo>? children})
      : super(
          VideoCallRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i32.WelcomeScreen]
class WelcomeRoute extends _i33.PageRouteInfo<void> {
  const WelcomeRoute({List<_i33.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}
