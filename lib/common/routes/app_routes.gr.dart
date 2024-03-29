// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i40;
import 'package:service_masters/about_app/view/about_screen.dart' as _i1;
import 'package:service_masters/bookings/view/book_service_provider.dart'
    as _i4;
import 'package:service_masters/bookings/view/booked_service_screen.dart'
    as _i5;
import 'package:service_masters/bookings/view/booked_services_screen.dart'
    as _i6;
import 'package:service_masters/bookmarked_service_providers/view/bookmarked_service_providers_screen.dart'
    as _i7;
import 'package:service_masters/change_password/view/change_password_screen.dart'
    as _i9;
import 'package:service_masters/chat/view/all_chats_screen.dart' as _i3;
import 'package:service_masters/chat/view/chat_screen.dart' as _i10;
import 'package:service_masters/common/barrels.dart' as _i41;
import 'package:service_masters/dashboard/view/dashboard_screen.dart' as _i11;
import 'package:service_masters/edit_profile/view/edit_profile_screen.dart'
    as _i12;
import 'package:service_masters/FAQs/view/faqs_screen.dart' as _i15;
import 'package:service_masters/favorite_services/view/favorite_services_screen.dart'
    as _i16;
import 'package:service_masters/history/view/history_screen.dart' as _i17;
import 'package:service_masters/home/view/home_screen.dart' as _i18;
import 'package:service_masters/in_app_review/view/review_and_rate_provider_screen.dart'
    as _i27;
import 'package:service_masters/in_app_review/view/reviews_and_rating_screen.dart'
    as _i28;
import 'package:service_masters/lodge_complaint/view/lodge_complaint_screen.dart'
    as _i19;
import 'package:service_masters/map_search/view/map_search_screen.dart' as _i20;
import 'package:service_masters/notifications/view/notification_screen.dart'
    as _i21;
import 'package:service_masters/onboarding/view/onboarding_screen.dart' as _i22;
import 'package:service_masters/payment/view/payment_screen.dart' as _i23;
import 'package:service_masters/personal_details/view/personal_details_screen.dart'
    as _i24;
import 'package:service_masters/privacy_policy/view/privacy_policy_screen.dart'
    as _i25;
import 'package:service_masters/profile/view/profile_screen.dart' as _i26;
import 'package:service_masters/search_providers/view/search_screen.dart'
    as _i29;
import 'package:service_masters/service_categories/view/all_categories_screen.dart'
    as _i2;
import 'package:service_masters/service_provider_details/views/service_provider_details_screen.dart'
    as _i30;
import 'package:service_masters/service_provider_details/views/service_provider_portfolio.dart'
    as _i31;
import 'package:service_masters/service_providers/view/service_providers_screen.dart'
    as _i32;
import 'package:service_masters/sign_in/view/sign_in_screen.dart' as _i33;
import 'package:service_masters/sign_up/view/sign_up_screen.dart' as _i34;
import 'package:service_masters/terms_and_conditions/view/terms_and_conditions_screen.dart'
    as _i35;
import 'package:service_masters/verify_user/views/enter_email_address_screen.dart'
    as _i13;
import 'package:service_masters/verify_user/views/enter_phone_number_screen.dart'
    as _i14;
import 'package:service_masters/verify_user/views/verification_screen.dart'
    as _i36;
import 'package:service_masters/video_call/view/video_call_screen.dart' as _i37;
import 'package:service_masters/voice_call/view/voice_call_screen.dart' as _i8;
import 'package:service_masters/wallet_balance/view/wallet_blance_screen.dart'
    as _i38;
import 'package:service_masters/welcome_user/view/welcome_screen.dart' as _i39;

abstract class $AppRouter extends _i40.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i40.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    AllCategories.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllCategories(),
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllChatsScreen(),
      );
    },
    BookServiceProviderRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BookServiceProviderScreen(),
      );
    },
    BookedServiceRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookedServiceScreen(),
      );
    },
    BookingsRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BookingsScreen(),
      );
    },
    BookmarkedServiceProvidersRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.BookmarkedServiceProvidersScreen(),
      );
    },
    CallRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CallScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ChangePasswordScreen(
          key: args.key,
          customer: args.customer,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ChatScreen(
          user: args.user,
          serviceProvider: args.serviceProvider,
          key: args.key,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.DashboardScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>(
          orElse: () => const EditProfileRouteArgs());
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.EditProfileScreen(
          key: args.key,
          customer: args.customer,
        ),
      );
    },
    EnterEmailRoute.name: (routeData) {
      final args = routeData.argsAs<EnterEmailRouteArgs>(
          orElse: () => const EnterEmailRouteArgs());
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.EnterEmailScreen(key: args.key),
      );
    },
    EnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPhoneRouteArgs>(
          orElse: () => const EnterPhoneRouteArgs());
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.EnterPhoneScreen(key: args.key),
      );
    },
    FAQsRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.FAQsScreen(),
      );
    },
    FavoriteServicesRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.FavoriteServicesScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.HistoryScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.HomeScreen(),
      );
    },
    LodgeComplaintRoute.name: (routeData) {
      final args = routeData.argsAs<LodgeComplaintRouteArgs>(
          orElse: () => const LodgeComplaintRouteArgs());
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.LodgeComplaintScreen(
          serviceProvider: args.serviceProvider,
          key: args.key,
        ),
      );
    },
    MapSearchRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.MapSearchScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.PaymentScreen(),
      );
    },
    PersonalDetailsRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.PersonalDetailsScreen(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.PrivacyPolicyScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.ProfileScreen(),
      );
    },
    ReviewAndRateProviderRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.ReviewAndRateProviderScreen(),
      );
    },
    ReviewsAndRatingRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.ReviewsAndRatingScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.SearchScreen(),
      );
    },
    ServiceProviderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceProviderDetailsRouteArgs>();
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.ServiceProviderDetailsScreen(
          serviceProvider: args.serviceProvider,
          relatedServiceProviders: args.relatedServiceProviders,
          key: args.key,
        ),
      );
    },
    ServiceProviderPortfolioRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.ServiceProviderPortfolioScreen(),
      );
    },
    ServiceProvidersRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceProvidersRouteArgs>();
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.ServiceProvidersScreen(
          serviceDescription: args.serviceDescription,
          serviceId: args.serviceId,
          key: args.key,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.SignUpScreen(),
      );
    },
    TermasAndConditionsRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.TermasAndConditionsScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.VerificationScreen(),
      );
    },
    VideoCallRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i37.VideoCallScreen(),
      );
    },
    WalletBalnceRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i38.WalletBalnceScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i40.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i39.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i40.PageRouteInfo<void> {
  const AboutRoute({List<_i40.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllCategories]
class AllCategories extends _i40.PageRouteInfo<void> {
  const AllCategories({List<_i40.PageRouteInfo>? children})
      : super(
          AllCategories.name,
          initialChildren: children,
        );

  static const String name = 'AllCategories';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllChatsScreen]
class AllChatsRoute extends _i40.PageRouteInfo<void> {
  const AllChatsRoute({List<_i40.PageRouteInfo>? children})
      : super(
          AllChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllChatsRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BookServiceProviderScreen]
class BookServiceProviderRoute extends _i40.PageRouteInfo<void> {
  const BookServiceProviderRoute({List<_i40.PageRouteInfo>? children})
      : super(
          BookServiceProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookServiceProviderRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BookedServiceScreen]
class BookedServiceRoute extends _i40.PageRouteInfo<void> {
  const BookedServiceRoute({List<_i40.PageRouteInfo>? children})
      : super(
          BookedServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookedServiceRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BookingsScreen]
class BookingsRoute extends _i40.PageRouteInfo<void> {
  const BookingsRoute({List<_i40.PageRouteInfo>? children})
      : super(
          BookingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i7.BookmarkedServiceProvidersScreen]
class BookmarkedServiceProvidersRoute extends _i40.PageRouteInfo<void> {
  const BookmarkedServiceProvidersRoute({List<_i40.PageRouteInfo>? children})
      : super(
          BookmarkedServiceProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarkedServiceProvidersRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i8.CallScreen]
class CallRoute extends _i40.PageRouteInfo<void> {
  const CallRoute({List<_i40.PageRouteInfo>? children})
      : super(
          CallRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ChangePasswordScreen]
class ChangePasswordRoute extends _i40.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i41.Key? key,
    _i41.Customer? customer,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(
            key: key,
            customer: customer,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i40.PageInfo<ChangePasswordRouteArgs> page =
      _i40.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    this.customer,
  });

  final _i41.Key? key;

  final _i41.Customer? customer;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, customer: $customer}';
  }
}

/// generated route for
/// [_i10.ChatScreen]
class ChatRoute extends _i40.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    required _i41.UserModel user,
    _i41.ServiceProvider? serviceProvider,
    _i41.Key? key,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            user: user,
            serviceProvider: serviceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i40.PageInfo<ChatRouteArgs> page =
      _i40.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    required this.user,
    this.serviceProvider,
    this.key,
  });

  final _i41.UserModel user;

  final _i41.ServiceProvider? serviceProvider;

  final _i41.Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{user: $user, serviceProvider: $serviceProvider, key: $key}';
  }
}

/// generated route for
/// [_i11.DashboardScreen]
class DashboardRoute extends _i40.PageRouteInfo<void> {
  const DashboardRoute({List<_i40.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i12.EditProfileScreen]
class EditProfileRoute extends _i40.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    _i41.Key? key,
    _i41.Customer? customer,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            customer: customer,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i40.PageInfo<EditProfileRouteArgs> page =
      _i40.PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    this.customer,
  });

  final _i41.Key? key;

  final _i41.Customer? customer;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, customer: $customer}';
  }
}

/// generated route for
/// [_i13.EnterEmailScreen]
class EnterEmailRoute extends _i40.PageRouteInfo<EnterEmailRouteArgs> {
  EnterEmailRoute({
    _i41.Key? key,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          EnterEmailRoute.name,
          args: EnterEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterEmailRoute';

  static const _i40.PageInfo<EnterEmailRouteArgs> page =
      _i40.PageInfo<EnterEmailRouteArgs>(name);
}

class EnterEmailRouteArgs {
  const EnterEmailRouteArgs({this.key});

  final _i41.Key? key;

  @override
  String toString() {
    return 'EnterEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.EnterPhoneScreen]
class EnterPhoneRoute extends _i40.PageRouteInfo<EnterPhoneRouteArgs> {
  EnterPhoneRoute({
    _i41.Key? key,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          EnterPhoneRoute.name,
          args: EnterPhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterPhoneRoute';

  static const _i40.PageInfo<EnterPhoneRouteArgs> page =
      _i40.PageInfo<EnterPhoneRouteArgs>(name);
}

class EnterPhoneRouteArgs {
  const EnterPhoneRouteArgs({this.key});

  final _i41.Key? key;

  @override
  String toString() {
    return 'EnterPhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.FAQsScreen]
class FAQsRoute extends _i40.PageRouteInfo<void> {
  const FAQsRoute({List<_i40.PageRouteInfo>? children})
      : super(
          FAQsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FAQsRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i16.FavoriteServicesScreen]
class FavoriteServicesRoute extends _i40.PageRouteInfo<void> {
  const FavoriteServicesRoute({List<_i40.PageRouteInfo>? children})
      : super(
          FavoriteServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteServicesRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i17.HistoryScreen]
class HistoryRoute extends _i40.PageRouteInfo<void> {
  const HistoryRoute({List<_i40.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i18.HomeScreen]
class HomeRoute extends _i40.PageRouteInfo<void> {
  const HomeRoute({List<_i40.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i19.LodgeComplaintScreen]
class LodgeComplaintRoute extends _i40.PageRouteInfo<LodgeComplaintRouteArgs> {
  LodgeComplaintRoute({
    _i41.ServiceProvider? serviceProvider,
    _i41.Key? key,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          LodgeComplaintRoute.name,
          args: LodgeComplaintRouteArgs(
            serviceProvider: serviceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LodgeComplaintRoute';

  static const _i40.PageInfo<LodgeComplaintRouteArgs> page =
      _i40.PageInfo<LodgeComplaintRouteArgs>(name);
}

class LodgeComplaintRouteArgs {
  const LodgeComplaintRouteArgs({
    this.serviceProvider,
    this.key,
  });

  final _i41.ServiceProvider? serviceProvider;

  final _i41.Key? key;

  @override
  String toString() {
    return 'LodgeComplaintRouteArgs{serviceProvider: $serviceProvider, key: $key}';
  }
}

/// generated route for
/// [_i20.MapSearchScreen]
class MapSearchRoute extends _i40.PageRouteInfo<void> {
  const MapSearchRoute({List<_i40.PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i21.NotificationScreen]
class NotificationRoute extends _i40.PageRouteInfo<void> {
  const NotificationRoute({List<_i40.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i22.OnboardingScreen]
class OnboardingRoute extends _i40.PageRouteInfo<void> {
  const OnboardingRoute({List<_i40.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i23.PaymentScreen]
class PaymentRoute extends _i40.PageRouteInfo<void> {
  const PaymentRoute({List<_i40.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i24.PersonalDetailsScreen]
class PersonalDetailsRoute extends _i40.PageRouteInfo<void> {
  const PersonalDetailsRoute({List<_i40.PageRouteInfo>? children})
      : super(
          PersonalDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDetailsRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i25.PrivacyPolicyScreen]
class PrivacyPolicyRoute extends _i40.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i40.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i26.ProfileScreen]
class ProfileRoute extends _i40.PageRouteInfo<void> {
  const ProfileRoute({List<_i40.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i27.ReviewAndRateProviderScreen]
class ReviewAndRateProviderRoute extends _i40.PageRouteInfo<void> {
  const ReviewAndRateProviderRoute({List<_i40.PageRouteInfo>? children})
      : super(
          ReviewAndRateProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewAndRateProviderRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ReviewsAndRatingScreen]
class ReviewsAndRatingRoute extends _i40.PageRouteInfo<void> {
  const ReviewsAndRatingRoute({List<_i40.PageRouteInfo>? children})
      : super(
          ReviewsAndRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsAndRatingRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i29.SearchScreen]
class SearchRoute extends _i40.PageRouteInfo<void> {
  const SearchRoute({List<_i40.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i30.ServiceProviderDetailsScreen]
class ServiceProviderDetailsRoute
    extends _i40.PageRouteInfo<ServiceProviderDetailsRouteArgs> {
  ServiceProviderDetailsRoute({
    required _i41.ServiceProvider serviceProvider,
    required List<_i41.ServiceProvider> relatedServiceProviders,
    _i41.Key? key,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          ServiceProviderDetailsRoute.name,
          args: ServiceProviderDetailsRouteArgs(
            serviceProvider: serviceProvider,
            relatedServiceProviders: relatedServiceProviders,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceProviderDetailsRoute';

  static const _i40.PageInfo<ServiceProviderDetailsRouteArgs> page =
      _i40.PageInfo<ServiceProviderDetailsRouteArgs>(name);
}

class ServiceProviderDetailsRouteArgs {
  const ServiceProviderDetailsRouteArgs({
    required this.serviceProvider,
    required this.relatedServiceProviders,
    this.key,
  });

  final _i41.ServiceProvider serviceProvider;

  final List<_i41.ServiceProvider> relatedServiceProviders;

  final _i41.Key? key;

  @override
  String toString() {
    return 'ServiceProviderDetailsRouteArgs{serviceProvider: $serviceProvider, relatedServiceProviders: $relatedServiceProviders, key: $key}';
  }
}

/// generated route for
/// [_i31.ServiceProviderPortfolioScreen]
class ServiceProviderPortfolioRoute extends _i40.PageRouteInfo<void> {
  const ServiceProviderPortfolioRoute({List<_i40.PageRouteInfo>? children})
      : super(
          ServiceProviderPortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderPortfolioRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i32.ServiceProvidersScreen]
class ServiceProvidersRoute
    extends _i40.PageRouteInfo<ServiceProvidersRouteArgs> {
  ServiceProvidersRoute({
    required String serviceDescription,
    required String serviceId,
    _i41.Key? key,
    List<_i40.PageRouteInfo>? children,
  }) : super(
          ServiceProvidersRoute.name,
          args: ServiceProvidersRouteArgs(
            serviceDescription: serviceDescription,
            serviceId: serviceId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceProvidersRoute';

  static const _i40.PageInfo<ServiceProvidersRouteArgs> page =
      _i40.PageInfo<ServiceProvidersRouteArgs>(name);
}

class ServiceProvidersRouteArgs {
  const ServiceProvidersRouteArgs({
    required this.serviceDescription,
    required this.serviceId,
    this.key,
  });

  final String serviceDescription;

  final String serviceId;

  final _i41.Key? key;

  @override
  String toString() {
    return 'ServiceProvidersRouteArgs{serviceDescription: $serviceDescription, serviceId: $serviceId, key: $key}';
  }
}

/// generated route for
/// [_i33.SignInScreen]
class SignInRoute extends _i40.PageRouteInfo<void> {
  const SignInRoute({List<_i40.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i34.SignUpScreen]
class SignUpRoute extends _i40.PageRouteInfo<void> {
  const SignUpRoute({List<_i40.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i35.TermasAndConditionsScreen]
class TermasAndConditionsRoute extends _i40.PageRouteInfo<void> {
  const TermasAndConditionsRoute({List<_i40.PageRouteInfo>? children})
      : super(
          TermasAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermasAndConditionsRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i36.VerificationScreen]
class VerificationRoute extends _i40.PageRouteInfo<void> {
  const VerificationRoute({List<_i40.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i37.VideoCallScreen]
class VideoCallRoute extends _i40.PageRouteInfo<void> {
  const VideoCallRoute({List<_i40.PageRouteInfo>? children})
      : super(
          VideoCallRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i38.WalletBalnceScreen]
class WalletBalnceRoute extends _i40.PageRouteInfo<void> {
  const WalletBalnceRoute({List<_i40.PageRouteInfo>? children})
      : super(
          WalletBalnceRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletBalnceRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}

/// generated route for
/// [_i39.WelcomeScreen]
class WelcomeRoute extends _i40.PageRouteInfo<void> {
  const WelcomeRoute({List<_i40.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i40.PageInfo<void> page = _i40.PageInfo<void>(name);
}
