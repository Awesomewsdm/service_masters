// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i37;
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
import 'package:service_masters/common/barrels.dart' as _i38;
import 'package:service_masters/edit_profile/view/edit_profile_screen.dart'
    as _i11;
import 'package:service_masters/FAQs/view/faqs_screen.dart' as _i14;
import 'package:service_masters/history/view/history_screen.dart' as _i15;
import 'package:service_masters/home/view/home_screen.dart' as _i16;
import 'package:service_masters/in_app_review/view/review_and_rate_provider_screen.dart'
    as _i24;
import 'package:service_masters/in_app_review/view/reviews_and_rating_screen.dart'
    as _i25;
import 'package:service_masters/lodge_complaint/view/lodge_complaint_screen.dart'
    as _i17;
import 'package:service_masters/map_search/view/map_search_screen.dart' as _i18;
import 'package:service_masters/notifications/view/notification_screen.dart'
    as _i19;
import 'package:service_masters/onboarding/view/onboarding_screen.dart' as _i20;
import 'package:service_masters/payment/view/payment_screen.dart' as _i21;
import 'package:service_masters/privacy_policy/view/privacy_policy_screen.dart'
    as _i22;
import 'package:service_masters/profile/view/profile_screen.dart' as _i23;
import 'package:service_masters/search_providers/view/search_screen.dart'
    as _i26;
import 'package:service_masters/service_categories/view/all_categories_screen.dart'
    as _i2;
import 'package:service_masters/service_provider_details/views/service_provider_details_screen.dart'
    as _i27;
import 'package:service_masters/service_provider_details/views/service_provider_portfolio.dart'
    as _i28;
import 'package:service_masters/service_providers/view/service_providers_screen.dart'
    as _i29;
import 'package:service_masters/sign_in/view/sign_in_screen.dart' as _i30;
import 'package:service_masters/sign_up/view/sign_up_screen.dart' as _i31;
import 'package:service_masters/terms_and_conditions/view/terms_and_conditions_screen.dart'
    as _i32;
import 'package:service_masters/verify_user/views/enter_email_address_screen.dart'
    as _i12;
import 'package:service_masters/verify_user/views/enter_phone_number_screen.dart'
    as _i13;
import 'package:service_masters/verify_user/views/verification_screen.dart'
    as _i33;
import 'package:service_masters/video_call/view/video_call_screen.dart' as _i34;
import 'package:service_masters/voice_call/view/voice_call_screen.dart' as _i7;
import 'package:service_masters/wallet_balance/view/wallet_blance_screen.dart'
    as _i35;
import 'package:service_masters/welcome_user/view/welcome_screen.dart' as _i36;

abstract class $AppRouter extends _i37.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i37.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    AllCategories.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllCategories(),
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllChatsScreen(),
      );
    },
    BookServiceProviderRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BookServiceProviderScreen(),
      );
    },
    BookedServiceRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookedServiceScreen(),
      );
    },
    BookingsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BookingsScreen(),
      );
    },
    CallRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CallScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ChangePasswordScreen(key: args.key),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ChatScreen(
          user: args.user,
          key: args.key,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DashboardScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.EditProfileScreen(),
      );
    },
    EnterEmailRoute.name: (routeData) {
      final args = routeData.argsAs<EnterEmailRouteArgs>(
          orElse: () => const EnterEmailRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.EnterEmailScreen(key: args.key),
      );
    },
    EnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPhoneRouteArgs>(
          orElse: () => const EnterPhoneRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.EnterPhoneScreen(key: args.key),
      );
    },
    FAQsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.FAQsScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.HistoryScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.HomeScreen(),
      );
    },
    LodgeComplaintRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.LodgeComplaintScreen(),
      );
    },
    MapSearchRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.MapSearchScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.PaymentScreen(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.PrivacyPolicyScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ProfileScreen(),
      );
    },
    ReviewAndRateProviderRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.ReviewAndRateProviderScreen(),
      );
    },
    ReviewsAndRatingRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ReviewsAndRatingScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SearchScreen(),
      );
    },
    ServiceProviderDetailsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.ServiceProviderDetailsScreen(),
      );
    },
    ServiceProviderPortfolioRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.ServiceProviderPortfolioScreen(),
      );
    },
    ServiceProvidersRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.ServiceProvidersScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.SignUpScreen(),
      );
    },
    TermasAndConditionsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.TermasAndConditionsScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.VerificationScreen(),
      );
    },
    VideoCallRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.VideoCallScreen(),
      );
    },
    WalletBalnceRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.WalletBalnceScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i37.PageRouteInfo<void> {
  const AboutRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllCategories]
class AllCategories extends _i37.PageRouteInfo<void> {
  const AllCategories({List<_i37.PageRouteInfo>? children})
      : super(
          AllCategories.name,
          initialChildren: children,
        );

  static const String name = 'AllCategories';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllChatsScreen]
class AllChatsRoute extends _i37.PageRouteInfo<void> {
  const AllChatsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AllChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllChatsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BookServiceProviderScreen]
class BookServiceProviderRoute extends _i37.PageRouteInfo<void> {
  const BookServiceProviderRoute({List<_i37.PageRouteInfo>? children})
      : super(
          BookServiceProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookServiceProviderRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BookedServiceScreen]
class BookedServiceRoute extends _i37.PageRouteInfo<void> {
  const BookedServiceRoute({List<_i37.PageRouteInfo>? children})
      : super(
          BookedServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookedServiceRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BookingsScreen]
class BookingsRoute extends _i37.PageRouteInfo<void> {
  const BookingsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          BookingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CallScreen]
class CallRoute extends _i37.PageRouteInfo<void> {
  const CallRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CallRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChangePasswordScreen]
class ChangePasswordRoute extends _i37.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i38.Key? key,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i37.PageInfo<ChangePasswordRouteArgs> page =
      _i37.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final _i38.Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.ChatScreen]
class ChatRoute extends _i37.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    required _i38.UserModel user,
    _i38.Key? key,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            user: user,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i37.PageInfo<ChatRouteArgs> page =
      _i37.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    required this.user,
    this.key,
  });

  final _i38.UserModel user;

  final _i38.Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i10.DashboardScreen]
class DashboardRoute extends _i37.PageRouteInfo<void> {
  const DashboardRoute({List<_i37.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EditProfileScreen]
class EditProfileRoute extends _i37.PageRouteInfo<void> {
  const EditProfileRoute({List<_i37.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i12.EnterEmailScreen]
class EnterEmailRoute extends _i37.PageRouteInfo<EnterEmailRouteArgs> {
  EnterEmailRoute({
    _i38.Key? key,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          EnterEmailRoute.name,
          args: EnterEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterEmailRoute';

  static const _i37.PageInfo<EnterEmailRouteArgs> page =
      _i37.PageInfo<EnterEmailRouteArgs>(name);
}

class EnterEmailRouteArgs {
  const EnterEmailRouteArgs({this.key});

  final _i38.Key? key;

  @override
  String toString() {
    return 'EnterEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.EnterPhoneScreen]
class EnterPhoneRoute extends _i37.PageRouteInfo<EnterPhoneRouteArgs> {
  EnterPhoneRoute({
    _i38.Key? key,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          EnterPhoneRoute.name,
          args: EnterPhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterPhoneRoute';

  static const _i37.PageInfo<EnterPhoneRouteArgs> page =
      _i37.PageInfo<EnterPhoneRouteArgs>(name);
}

class EnterPhoneRouteArgs {
  const EnterPhoneRouteArgs({this.key});

  final _i38.Key? key;

  @override
  String toString() {
    return 'EnterPhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.FAQsScreen]
class FAQsRoute extends _i37.PageRouteInfo<void> {
  const FAQsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          FAQsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FAQsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i15.HistoryScreen]
class HistoryRoute extends _i37.PageRouteInfo<void> {
  const HistoryRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i16.HomeScreen]
class HomeRoute extends _i37.PageRouteInfo<void> {
  const HomeRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i17.LodgeComplaintScreen]
class LodgeComplaintRoute extends _i37.PageRouteInfo<void> {
  const LodgeComplaintRoute({List<_i37.PageRouteInfo>? children})
      : super(
          LodgeComplaintRoute.name,
          initialChildren: children,
        );

  static const String name = 'LodgeComplaintRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i18.MapSearchScreen]
class MapSearchRoute extends _i37.PageRouteInfo<void> {
  const MapSearchRoute({List<_i37.PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i19.NotificationScreen]
class NotificationRoute extends _i37.PageRouteInfo<void> {
  const NotificationRoute({List<_i37.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i20.OnboardingScreen]
class OnboardingRoute extends _i37.PageRouteInfo<void> {
  const OnboardingRoute({List<_i37.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i21.PaymentScreen]
class PaymentRoute extends _i37.PageRouteInfo<void> {
  const PaymentRoute({List<_i37.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i22.PrivacyPolicyScreen]
class PrivacyPolicyRoute extends _i37.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i37.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ProfileScreen]
class ProfileRoute extends _i37.PageRouteInfo<void> {
  const ProfileRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ReviewAndRateProviderScreen]
class ReviewAndRateProviderRoute extends _i37.PageRouteInfo<void> {
  const ReviewAndRateProviderRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ReviewAndRateProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewAndRateProviderRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i25.ReviewsAndRatingScreen]
class ReviewsAndRatingRoute extends _i37.PageRouteInfo<void> {
  const ReviewsAndRatingRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ReviewsAndRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsAndRatingRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SearchScreen]
class SearchRoute extends _i37.PageRouteInfo<void> {
  const SearchRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i27.ServiceProviderDetailsScreen]
class ServiceProviderDetailsRoute extends _i37.PageRouteInfo<void> {
  const ServiceProviderDetailsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ServiceProviderDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderDetailsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ServiceProviderPortfolioScreen]
class ServiceProviderPortfolioRoute extends _i37.PageRouteInfo<void> {
  const ServiceProviderPortfolioRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ServiceProviderPortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderPortfolioRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ServiceProvidersScreen]
class ServiceProvidersRoute extends _i37.PageRouteInfo<void> {
  const ServiceProvidersRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ServiceProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProvidersRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i30.SignInScreen]
class SignInRoute extends _i37.PageRouteInfo<void> {
  const SignInRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i31.SignUpScreen]
class SignUpRoute extends _i37.PageRouteInfo<void> {
  const SignUpRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i32.TermasAndConditionsScreen]
class TermasAndConditionsRoute extends _i37.PageRouteInfo<void> {
  const TermasAndConditionsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          TermasAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermasAndConditionsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i33.VerificationScreen]
class VerificationRoute extends _i37.PageRouteInfo<void> {
  const VerificationRoute({List<_i37.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i34.VideoCallScreen]
class VideoCallRoute extends _i37.PageRouteInfo<void> {
  const VideoCallRoute({List<_i37.PageRouteInfo>? children})
      : super(
          VideoCallRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i35.WalletBalnceScreen]
class WalletBalnceRoute extends _i37.PageRouteInfo<void> {
  const WalletBalnceRoute({List<_i37.PageRouteInfo>? children})
      : super(
          WalletBalnceRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletBalnceRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i36.WelcomeScreen]
class WelcomeRoute extends _i37.PageRouteInfo<void> {
  const WelcomeRoute({List<_i37.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}
