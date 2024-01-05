// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i31;
import 'package:home_service_app/app/view/dashboard_screen.dart' as _i9;
import 'package:home_service_app/bookings/view/book_service_provider.dart'
    as _i3;
import 'package:home_service_app/bookings/view/booked_service_screen.dart'
    as _i4;
import 'package:home_service_app/bookings/view/booked_services_screen.dart'
    as _i5;
import 'package:home_service_app/change_password/view/change_password_screen.dart'
    as _i7;
import 'package:home_service_app/chat/view/all_chats_screen.dart' as _i2;
import 'package:home_service_app/chat/view/chat_screen.dart' as _i8;
import 'package:home_service_app/common/barrels.dart' as _i32;
import 'package:home_service_app/edit_profile/view/edit_profile_screen.dart'
    as _i10;
import 'package:home_service_app/home/view/home_screen.dart' as _i13;
import 'package:home_service_app/lodge_complaint/view/lodge_complaint_screen.dart'
    as _i14;
import 'package:home_service_app/map_search/view/map_search_screen.dart'
    as _i15;
import 'package:home_service_app/notifications/view/notification_screen.dart'
    as _i16;
import 'package:home_service_app/onboarding/view/onboarding_screen.dart'
    as _i17;
import 'package:home_service_app/payment/view/payment_screen.dart' as _i18;
import 'package:home_service_app/privacy_policy/view/privacy_policy_screen.dart'
    as _i19;
import 'package:home_service_app/profile/view/profile_screen.dart' as _i20;
import 'package:home_service_app/reviews_and_ratings/view/reviews_and_rating_screen.dart'
    as _i21;
import 'package:home_service_app/search_providers/view/search_screen.dart'
    as _i22;
import 'package:home_service_app/service_categories/view/all_categories_screen.dart'
    as _i1;
import 'package:home_service_app/service_provider_details/views/service_provider_details_screen.dart'
    as _i23;
import 'package:home_service_app/service_provider_details/views/service_provider_portfolio.dart'
    as _i24;
import 'package:home_service_app/service_providers/view/service_providers_screen.dart'
    as _i25;
import 'package:home_service_app/sign_in/view/sign_in_screen.dart' as _i26;
import 'package:home_service_app/sign_up/view/sign_up_screen.dart' as _i27;
import 'package:home_service_app/verify_user/views/enter_email_address_screen.dart'
    as _i11;
import 'package:home_service_app/verify_user/views/enter_phone_number_screen.dart'
    as _i12;
import 'package:home_service_app/verify_user/views/verification_screen.dart'
    as _i28;
import 'package:home_service_app/video_call/view/video_call_screen.dart'
    as _i29;
import 'package:home_service_app/voice_call/view/voice_call_screen.dart' as _i6;
import 'package:home_service_app/welcome_user/view/welcome_screen.dart' as _i30;

abstract class $AppRouter extends _i31.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i31.PageFactory> pagesMap = {
    AllCategories.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllCategories(),
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllChatsScreen(),
      );
    },
    BookServiceProviderRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BookServiceProviderScreen(),
      );
    },
    BookedServiceRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BookedServiceScreen(),
      );
    },
    BookingsRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookingsScreen(),
      );
    },
    CallRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CallScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ChangePasswordScreen(key: args.key),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChatScreen(
          user: args.user,
          key: args.key,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.DashboardScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.EditProfileScreen(),
      );
    },
    EnterEmailRoute.name: (routeData) {
      final args = routeData.argsAs<EnterEmailRouteArgs>(
          orElse: () => const EnterEmailRouteArgs());
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.EnterEmailScreen(key: args.key),
      );
    },
    EnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPhoneRouteArgs>(
          orElse: () => const EnterPhoneRouteArgs());
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.EnterPhoneScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.HomeScreen(),
      );
    },
    LodgeComplaintRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.LodgeComplaintScreen(),
      );
    },
    MapSearchRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.MapSearchScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.PaymentScreen(),
      );
    },
    PrivacyPolicy.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.PrivacyPolicy(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.ProfileScreen(),
      );
    },
    ReviewsAndRatingRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ReviewsAndRatingScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.SearchScreen(),
      );
    },
    ServiceProviderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceProviderDetailsRouteArgs>(
          orElse: () => const ServiceProviderDetailsRouteArgs());
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.ServiceProviderDetailsScreen(key: args.key),
      );
    },
    ServiceProviderPortfolio.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.ServiceProviderPortfolio(),
      );
    },
    ServiceProvidersRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ServiceProvidersScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.SignInScreen(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.SignUpScreen(key: args.key),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.VerificationScreen(),
      );
    },
    VideoCallRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.VideoCallScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllCategories]
class AllCategories extends _i31.PageRouteInfo<void> {
  const AllCategories({List<_i31.PageRouteInfo>? children})
      : super(
          AllCategories.name,
          initialChildren: children,
        );

  static const String name = 'AllCategories';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllChatsScreen]
class AllChatsRoute extends _i31.PageRouteInfo<void> {
  const AllChatsRoute({List<_i31.PageRouteInfo>? children})
      : super(
          AllChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllChatsRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BookServiceProviderScreen]
class BookServiceProviderRoute extends _i31.PageRouteInfo<void> {
  const BookServiceProviderRoute({List<_i31.PageRouteInfo>? children})
      : super(
          BookServiceProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookServiceProviderRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BookedServiceScreen]
class BookedServiceRoute extends _i31.PageRouteInfo<void> {
  const BookedServiceRoute({List<_i31.PageRouteInfo>? children})
      : super(
          BookedServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookedServiceRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BookingsScreen]
class BookingsRoute extends _i31.PageRouteInfo<void> {
  const BookingsRoute({List<_i31.PageRouteInfo>? children})
      : super(
          BookingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CallScreen]
class CallRoute extends _i31.PageRouteInfo<void> {
  const CallRoute({List<_i31.PageRouteInfo>? children})
      : super(
          CallRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChangePasswordScreen]
class ChangePasswordRoute extends _i31.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i31.PageInfo<ChangePasswordRouteArgs> page =
      _i31.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.ChatScreen]
class ChatRoute extends _i31.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    required _i32.UserModel user,
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            user: user,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i31.PageInfo<ChatRouteArgs> page =
      _i31.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    required this.user,
    this.key,
  });

  final _i32.UserModel user;

  final _i32.Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i9.DashboardScreen]
class DashboardRoute extends _i31.PageRouteInfo<void> {
  const DashboardRoute({List<_i31.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i10.EditProfileScreen]
class EditProfileRoute extends _i31.PageRouteInfo<void> {
  const EditProfileRoute({List<_i31.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EnterEmailScreen]
class EnterEmailRoute extends _i31.PageRouteInfo<EnterEmailRouteArgs> {
  EnterEmailRoute({
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          EnterEmailRoute.name,
          args: EnterEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterEmailRoute';

  static const _i31.PageInfo<EnterEmailRouteArgs> page =
      _i31.PageInfo<EnterEmailRouteArgs>(name);
}

class EnterEmailRouteArgs {
  const EnterEmailRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'EnterEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.EnterPhoneScreen]
class EnterPhoneRoute extends _i31.PageRouteInfo<EnterPhoneRouteArgs> {
  EnterPhoneRoute({
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          EnterPhoneRoute.name,
          args: EnterPhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterPhoneRoute';

  static const _i31.PageInfo<EnterPhoneRouteArgs> page =
      _i31.PageInfo<EnterPhoneRouteArgs>(name);
}

class EnterPhoneRouteArgs {
  const EnterPhoneRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'EnterPhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.HomeScreen]
class HomeRoute extends _i31.PageRouteInfo<void> {
  const HomeRoute({List<_i31.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i14.LodgeComplaintScreen]
class LodgeComplaintRoute extends _i31.PageRouteInfo<void> {
  const LodgeComplaintRoute({List<_i31.PageRouteInfo>? children})
      : super(
          LodgeComplaintRoute.name,
          initialChildren: children,
        );

  static const String name = 'LodgeComplaintRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MapSearchScreen]
class MapSearchRoute extends _i31.PageRouteInfo<void> {
  const MapSearchRoute({List<_i31.PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i16.NotificationScreen]
class NotificationRoute extends _i31.PageRouteInfo<void> {
  const NotificationRoute({List<_i31.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i17.OnboardingScreen]
class OnboardingRoute extends _i31.PageRouteInfo<void> {
  const OnboardingRoute({List<_i31.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i18.PaymentScreen]
class PaymentRoute extends _i31.PageRouteInfo<void> {
  const PaymentRoute({List<_i31.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i19.PrivacyPolicy]
class PrivacyPolicy extends _i31.PageRouteInfo<void> {
  const PrivacyPolicy({List<_i31.PageRouteInfo>? children})
      : super(
          PrivacyPolicy.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicy';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ProfileScreen]
class ProfileRoute extends _i31.PageRouteInfo<void> {
  const ProfileRoute({List<_i31.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ReviewsAndRatingScreen]
class ReviewsAndRatingRoute extends _i31.PageRouteInfo<void> {
  const ReviewsAndRatingRoute({List<_i31.PageRouteInfo>? children})
      : super(
          ReviewsAndRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsAndRatingRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i22.SearchScreen]
class SearchRoute extends _i31.PageRouteInfo<void> {
  const SearchRoute({List<_i31.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ServiceProviderDetailsScreen]
class ServiceProviderDetailsRoute
    extends _i31.PageRouteInfo<ServiceProviderDetailsRouteArgs> {
  ServiceProviderDetailsRoute({
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          ServiceProviderDetailsRoute.name,
          args: ServiceProviderDetailsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ServiceProviderDetailsRoute';

  static const _i31.PageInfo<ServiceProviderDetailsRouteArgs> page =
      _i31.PageInfo<ServiceProviderDetailsRouteArgs>(name);
}

class ServiceProviderDetailsRouteArgs {
  const ServiceProviderDetailsRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'ServiceProviderDetailsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i24.ServiceProviderPortfolio]
class ServiceProviderPortfolio extends _i31.PageRouteInfo<void> {
  const ServiceProviderPortfolio({List<_i31.PageRouteInfo>? children})
      : super(
          ServiceProviderPortfolio.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderPortfolio';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i25.ServiceProvidersScreen]
class ServiceProvidersRoute extends _i31.PageRouteInfo<void> {
  const ServiceProvidersRoute({List<_i31.PageRouteInfo>? children})
      : super(
          ServiceProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProvidersRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SignInScreen]
class SignInRoute extends _i31.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i31.PageInfo<SignInRouteArgs> page =
      _i31.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i27.SignUpScreen]
class SignUpRoute extends _i31.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i32.Key? key,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i31.PageInfo<SignUpRouteArgs> page =
      _i31.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i32.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i28.VerificationScreen]
class VerificationRoute extends _i31.PageRouteInfo<void> {
  const VerificationRoute({List<_i31.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i29.VideoCallScreen]
class VideoCallRoute extends _i31.PageRouteInfo<void> {
  const VideoCallRoute({List<_i31.PageRouteInfo>? children})
      : super(
          VideoCallRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i30.WelcomeScreen]
class WelcomeRoute extends _i31.PageRouteInfo<void> {
  const WelcomeRoute({List<_i31.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}
