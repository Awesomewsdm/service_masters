// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i41;
import 'package:service_masters/about_app/view/about_screen.dart' as _i1;
import 'package:service_masters/book_service_provider/views/book_service_provider_screen.dart'
    as _i4;
import 'package:service_masters/book_service_provider/views/booking_summary_screen.dart'
    as _i6;
import 'package:service_masters/bookings/view/booked_service_details_screen.dart'
    as _i5;
import 'package:service_masters/bookings/view/booked_services_screen.dart'
    as _i7;
import 'package:service_masters/bookmarked_service_providers/view/bookmarked_service_providers_screen.dart'
    as _i8;
import 'package:service_masters/change_password/view/change_password_screen.dart'
    as _i10;
import 'package:service_masters/chat/view/all_chats_screen.dart' as _i3;
import 'package:service_masters/chat/view/chat_screen.dart' as _i11;
import 'package:service_masters/common/barrels.dart' as _i42;
import 'package:service_masters/dashboard/view/dashboard_screen.dart' as _i12;
import 'package:service_masters/edit_profile/view/edit_profile_screen.dart'
    as _i13;
import 'package:service_masters/FAQs/view/faqs_screen.dart' as _i16;
import 'package:service_masters/favorite_services/view/favorite_services_screen.dart'
    as _i17;
import 'package:service_masters/history/view/history_screen.dart' as _i18;
import 'package:service_masters/home/view/home_screen.dart' as _i19;
import 'package:service_masters/lodge_complaint/view/lodge_complaint_screen.dart'
    as _i20;
import 'package:service_masters/map_search/view/map_search_screen.dart' as _i21;
import 'package:service_masters/notifications/view/notification_screen.dart'
    as _i22;
import 'package:service_masters/onboarding/view/onboarding_screen.dart' as _i23;
import 'package:service_masters/payment/view/payment_screen.dart' as _i24;
import 'package:service_masters/personal_details/view/personal_details_screen.dart'
    as _i25;
import 'package:service_masters/privacy_policy/view/privacy_policy_screen.dart'
    as _i26;
import 'package:service_masters/profile/view/profile_screen.dart' as _i27;
import 'package:service_masters/search_providers/view/search_screen.dart'
    as _i30;
import 'package:service_masters/service_categories/view/all_categories_screen.dart'
    as _i2;
import 'package:service_masters/service_provider_details/views/service_provider_details_screen.dart'
    as _i31;
import 'package:service_masters/service_provider_details/views/service_provider_portfolio.dart'
    as _i32;
import 'package:service_masters/service_provider_review/view/review_and_rate_provider_screen.dart'
    as _i28;
import 'package:service_masters/service_provider_review/view/reviews_and_rating_screen.dart'
    as _i29;
import 'package:service_masters/service_providers/view/service_providers_screen.dart'
    as _i33;
import 'package:service_masters/sign_in/view/sign_in_screen.dart' as _i34;
import 'package:service_masters/sign_up/view/sign_up_screen.dart' as _i35;
import 'package:service_masters/terms_and_conditions/view/terms_and_conditions_screen.dart'
    as _i36;
import 'package:service_masters/verify_user/views/enter_email_address_screen.dart'
    as _i14;
import 'package:service_masters/verify_user/views/enter_phone_number_screen.dart'
    as _i15;
import 'package:service_masters/verify_user/views/verification_screen.dart'
    as _i37;
import 'package:service_masters/video_call/view/video_call_screen.dart' as _i38;
import 'package:service_masters/voice_call/view/voice_call_screen.dart' as _i9;
import 'package:service_masters/wallet_balance/view/wallet_blance_screen.dart'
    as _i39;
import 'package:service_masters/welcome_user/view/welcome_screen.dart' as _i40;

abstract class $AppRouter extends _i41.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i41.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    AllCategories.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllCategories(),
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllChatsScreen(),
      );
    },
    BookServiceProviderRoute.name: (routeData) {
      final args = routeData.argsAs<BookServiceProviderRouteArgs>();
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BookServiceProviderScreen(
          serviceProvider: args.serviceProvider,
          key: args.key,
        ),
      );
    },
    BookedServiceRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookedServiceScreen(),
      );
    },
    BookingSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<BookingSummaryRouteArgs>();
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.BookingSummaryScreen(
          bookServiceProvider: args.bookServiceProvider,
          serviceProvider: args.serviceProvider,
          key: args.key,
        ),
      );
    },
    BookingsRoute.name: (routeData) {
      final args = routeData.argsAs<BookingsRouteArgs>();
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.BookingsScreen(
          bookServiceProvider: args.bookServiceProvider,
          key: args.key,
        ),
      );
    },
    BookmarkedServiceProvidersRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.BookmarkedServiceProvidersScreen(),
      );
    },
    CallRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CallScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ChangePasswordScreen(
          key: args.key,
          customer: args.customer,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      final args =
          routeData.argsAs<ChatRouteArgs>(orElse: () => const ChatRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ChatScreen(
          serviceProvider: args.serviceProvider,
          key: args.key,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.DashboardScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>(
          orElse: () => const EditProfileRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.EditProfileScreen(
          key: args.key,
          customer: args.customer,
        ),
      );
    },
    EnterEmailRoute.name: (routeData) {
      final args = routeData.argsAs<EnterEmailRouteArgs>(
          orElse: () => const EnterEmailRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.EnterEmailScreen(key: args.key),
      );
    },
    EnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPhoneRouteArgs>(
          orElse: () => const EnterPhoneRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.EnterPhoneScreen(key: args.key),
      );
    },
    FAQsRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.FAQsScreen(),
      );
    },
    FavoriteServicesRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.FavoriteServicesScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.HistoryScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.HomeScreen(),
      );
    },
    LodgeComplaintRoute.name: (routeData) {
      final args = routeData.argsAs<LodgeComplaintRouteArgs>(
          orElse: () => const LodgeComplaintRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.LodgeComplaintScreen(
          serviceProvider: args.serviceProvider,
          key: args.key,
        ),
      );
    },
    MapSearchRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.MapSearchScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.NotificationScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.OnboardingScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.PaymentScreen(),
      );
    },
    PersonalDetailsRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.PersonalDetailsScreen(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.PrivacyPolicyScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.ProfileScreen(),
      );
    },
    ReviewAndRateProviderRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.ReviewAndRateProviderScreen(),
      );
    },
    ReviewsAndRatingRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewsAndRatingRouteArgs>(
          orElse: () => const ReviewsAndRatingRouteArgs());
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.ReviewsAndRatingScreen(
          serviceProviderReviews: args.serviceProviderReviews,
          key: args.key,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.SearchScreen(),
      );
    },
    ServiceProviderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceProviderDetailsRouteArgs>();
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.ServiceProviderDetailsScreen(
          serviceProvider: args.serviceProvider,
          relatedServiceProviders: args.relatedServiceProviders,
          serviceProviderReviews: args.serviceProviderReviews,
          serviceProviderPortfolio: args.serviceProviderPortfolio,
          key: args.key,
        ),
      );
    },
    ServiceProviderPortfolioRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.ServiceProviderPortfolioScreen(),
      );
    },
    ServiceProvidersRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceProvidersRouteArgs>();
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.ServiceProvidersScreen(
          serviceProviderReview: args.serviceProviderReview,
          serviceDescription: args.serviceDescription,
          serviceId: args.serviceId,
          key: args.key,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.SignUpScreen(),
      );
    },
    TermasAndConditionsRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.TermasAndConditionsScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i37.VerificationScreen(),
      );
    },
    VideoCallRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i38.VideoCallScreen(),
      );
    },
    WalletBalnceRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i39.WalletBalnceScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i41.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i40.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i41.PageRouteInfo<void> {
  const AboutRoute({List<_i41.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllCategories]
class AllCategories extends _i41.PageRouteInfo<void> {
  const AllCategories({List<_i41.PageRouteInfo>? children})
      : super(
          AllCategories.name,
          initialChildren: children,
        );

  static const String name = 'AllCategories';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllChatsScreen]
class AllChatsRoute extends _i41.PageRouteInfo<void> {
  const AllChatsRoute({List<_i41.PageRouteInfo>? children})
      : super(
          AllChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllChatsRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BookServiceProviderScreen]
class BookServiceProviderRoute
    extends _i41.PageRouteInfo<BookServiceProviderRouteArgs> {
  BookServiceProviderRoute({
    required _i42.ServiceProvider serviceProvider,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          BookServiceProviderRoute.name,
          args: BookServiceProviderRouteArgs(
            serviceProvider: serviceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BookServiceProviderRoute';

  static const _i41.PageInfo<BookServiceProviderRouteArgs> page =
      _i41.PageInfo<BookServiceProviderRouteArgs>(name);
}

class BookServiceProviderRouteArgs {
  const BookServiceProviderRouteArgs({
    required this.serviceProvider,
    this.key,
  });

  final _i42.ServiceProvider serviceProvider;

  final _i42.Key? key;

  @override
  String toString() {
    return 'BookServiceProviderRouteArgs{serviceProvider: $serviceProvider, key: $key}';
  }
}

/// generated route for
/// [_i5.BookedServiceScreen]
class BookedServiceRoute extends _i41.PageRouteInfo<void> {
  const BookedServiceRoute({List<_i41.PageRouteInfo>? children})
      : super(
          BookedServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookedServiceRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BookingSummaryScreen]
class BookingSummaryRoute extends _i41.PageRouteInfo<BookingSummaryRouteArgs> {
  BookingSummaryRoute({
    required _i42.BookServiceProvider bookServiceProvider,
    required _i42.ServiceProvider serviceProvider,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          BookingSummaryRoute.name,
          args: BookingSummaryRouteArgs(
            bookServiceProvider: bookServiceProvider,
            serviceProvider: serviceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BookingSummaryRoute';

  static const _i41.PageInfo<BookingSummaryRouteArgs> page =
      _i41.PageInfo<BookingSummaryRouteArgs>(name);
}

class BookingSummaryRouteArgs {
  const BookingSummaryRouteArgs({
    required this.bookServiceProvider,
    required this.serviceProvider,
    this.key,
  });

  final _i42.BookServiceProvider bookServiceProvider;

  final _i42.ServiceProvider serviceProvider;

  final _i42.Key? key;

  @override
  String toString() {
    return 'BookingSummaryRouteArgs{bookServiceProvider: $bookServiceProvider, serviceProvider: $serviceProvider, key: $key}';
  }
}

/// generated route for
/// [_i7.BookingsScreen]
class BookingsRoute extends _i41.PageRouteInfo<BookingsRouteArgs> {
  BookingsRoute({
    required _i42.BookServiceProvider bookServiceProvider,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          BookingsRoute.name,
          args: BookingsRouteArgs(
            bookServiceProvider: bookServiceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BookingsRoute';

  static const _i41.PageInfo<BookingsRouteArgs> page =
      _i41.PageInfo<BookingsRouteArgs>(name);
}

class BookingsRouteArgs {
  const BookingsRouteArgs({
    required this.bookServiceProvider,
    this.key,
  });

  final _i42.BookServiceProvider bookServiceProvider;

  final _i42.Key? key;

  @override
  String toString() {
    return 'BookingsRouteArgs{bookServiceProvider: $bookServiceProvider, key: $key}';
  }
}

/// generated route for
/// [_i8.BookmarkedServiceProvidersScreen]
class BookmarkedServiceProvidersRoute extends _i41.PageRouteInfo<void> {
  const BookmarkedServiceProvidersRoute({List<_i41.PageRouteInfo>? children})
      : super(
          BookmarkedServiceProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarkedServiceProvidersRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CallScreen]
class CallRoute extends _i41.PageRouteInfo<void> {
  const CallRoute({List<_i41.PageRouteInfo>? children})
      : super(
          CallRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ChangePasswordScreen]
class ChangePasswordRoute extends _i41.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i42.Key? key,
    _i42.Customer? customer,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(
            key: key,
            customer: customer,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i41.PageInfo<ChangePasswordRouteArgs> page =
      _i41.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    this.customer,
  });

  final _i42.Key? key;

  final _i42.Customer? customer;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, customer: $customer}';
  }
}

/// generated route for
/// [_i11.ChatScreen]
class ChatRoute extends _i41.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i42.ServiceProvider? serviceProvider,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            serviceProvider: serviceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i41.PageInfo<ChatRouteArgs> page =
      _i41.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.serviceProvider,
    this.key,
  });

  final _i42.ServiceProvider? serviceProvider;

  final _i42.Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{serviceProvider: $serviceProvider, key: $key}';
  }
}

/// generated route for
/// [_i12.DashboardScreen]
class DashboardRoute extends _i41.PageRouteInfo<void> {
  const DashboardRoute({List<_i41.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i13.EditProfileScreen]
class EditProfileRoute extends _i41.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    _i42.Key? key,
    _i42.Customer? customer,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            customer: customer,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i41.PageInfo<EditProfileRouteArgs> page =
      _i41.PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    this.customer,
  });

  final _i42.Key? key;

  final _i42.Customer? customer;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, customer: $customer}';
  }
}

/// generated route for
/// [_i14.EnterEmailScreen]
class EnterEmailRoute extends _i41.PageRouteInfo<EnterEmailRouteArgs> {
  EnterEmailRoute({
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          EnterEmailRoute.name,
          args: EnterEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterEmailRoute';

  static const _i41.PageInfo<EnterEmailRouteArgs> page =
      _i41.PageInfo<EnterEmailRouteArgs>(name);
}

class EnterEmailRouteArgs {
  const EnterEmailRouteArgs({this.key});

  final _i42.Key? key;

  @override
  String toString() {
    return 'EnterEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.EnterPhoneScreen]
class EnterPhoneRoute extends _i41.PageRouteInfo<EnterPhoneRouteArgs> {
  EnterPhoneRoute({
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          EnterPhoneRoute.name,
          args: EnterPhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterPhoneRoute';

  static const _i41.PageInfo<EnterPhoneRouteArgs> page =
      _i41.PageInfo<EnterPhoneRouteArgs>(name);
}

class EnterPhoneRouteArgs {
  const EnterPhoneRouteArgs({this.key});

  final _i42.Key? key;

  @override
  String toString() {
    return 'EnterPhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.FAQsScreen]
class FAQsRoute extends _i41.PageRouteInfo<void> {
  const FAQsRoute({List<_i41.PageRouteInfo>? children})
      : super(
          FAQsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FAQsRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i17.FavoriteServicesScreen]
class FavoriteServicesRoute extends _i41.PageRouteInfo<void> {
  const FavoriteServicesRoute({List<_i41.PageRouteInfo>? children})
      : super(
          FavoriteServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteServicesRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i18.HistoryScreen]
class HistoryRoute extends _i41.PageRouteInfo<void> {
  const HistoryRoute({List<_i41.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i19.HomeScreen]
class HomeRoute extends _i41.PageRouteInfo<void> {
  const HomeRoute({List<_i41.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i20.LodgeComplaintScreen]
class LodgeComplaintRoute extends _i41.PageRouteInfo<LodgeComplaintRouteArgs> {
  LodgeComplaintRoute({
    _i42.ServiceProvider? serviceProvider,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          LodgeComplaintRoute.name,
          args: LodgeComplaintRouteArgs(
            serviceProvider: serviceProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LodgeComplaintRoute';

  static const _i41.PageInfo<LodgeComplaintRouteArgs> page =
      _i41.PageInfo<LodgeComplaintRouteArgs>(name);
}

class LodgeComplaintRouteArgs {
  const LodgeComplaintRouteArgs({
    this.serviceProvider,
    this.key,
  });

  final _i42.ServiceProvider? serviceProvider;

  final _i42.Key? key;

  @override
  String toString() {
    return 'LodgeComplaintRouteArgs{serviceProvider: $serviceProvider, key: $key}';
  }
}

/// generated route for
/// [_i21.MapSearchScreen]
class MapSearchRoute extends _i41.PageRouteInfo<void> {
  const MapSearchRoute({List<_i41.PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i22.NotificationScreen]
class NotificationRoute extends _i41.PageRouteInfo<void> {
  const NotificationRoute({List<_i41.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i23.OnboardingScreen]
class OnboardingRoute extends _i41.PageRouteInfo<void> {
  const OnboardingRoute({List<_i41.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i24.PaymentScreen]
class PaymentRoute extends _i41.PageRouteInfo<void> {
  const PaymentRoute({List<_i41.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i25.PersonalDetailsScreen]
class PersonalDetailsRoute extends _i41.PageRouteInfo<void> {
  const PersonalDetailsRoute({List<_i41.PageRouteInfo>? children})
      : super(
          PersonalDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDetailsRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i26.PrivacyPolicyScreen]
class PrivacyPolicyRoute extends _i41.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i41.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i27.ProfileScreen]
class ProfileRoute extends _i41.PageRouteInfo<void> {
  const ProfileRoute({List<_i41.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ReviewAndRateProviderScreen]
class ReviewAndRateProviderRoute extends _i41.PageRouteInfo<void> {
  const ReviewAndRateProviderRoute({List<_i41.PageRouteInfo>? children})
      : super(
          ReviewAndRateProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewAndRateProviderRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ReviewsAndRatingScreen]
class ReviewsAndRatingRoute
    extends _i41.PageRouteInfo<ReviewsAndRatingRouteArgs> {
  ReviewsAndRatingRoute({
    List<_i42.ServiceProviderReview>? serviceProviderReviews,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          ReviewsAndRatingRoute.name,
          args: ReviewsAndRatingRouteArgs(
            serviceProviderReviews: serviceProviderReviews,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewsAndRatingRoute';

  static const _i41.PageInfo<ReviewsAndRatingRouteArgs> page =
      _i41.PageInfo<ReviewsAndRatingRouteArgs>(name);
}

class ReviewsAndRatingRouteArgs {
  const ReviewsAndRatingRouteArgs({
    this.serviceProviderReviews,
    this.key,
  });

  final List<_i42.ServiceProviderReview>? serviceProviderReviews;

  final _i42.Key? key;

  @override
  String toString() {
    return 'ReviewsAndRatingRouteArgs{serviceProviderReviews: $serviceProviderReviews, key: $key}';
  }
}

/// generated route for
/// [_i30.SearchScreen]
class SearchRoute extends _i41.PageRouteInfo<void> {
  const SearchRoute({List<_i41.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i31.ServiceProviderDetailsScreen]
class ServiceProviderDetailsRoute
    extends _i41.PageRouteInfo<ServiceProviderDetailsRouteArgs> {
  ServiceProviderDetailsRoute({
    required _i42.ServiceProvider serviceProvider,
    required List<_i42.ServiceProvider> relatedServiceProviders,
    required List<_i42.ServiceProviderReview> serviceProviderReviews,
    required List<_i42.ServiceProviderPortfolio> serviceProviderPortfolio,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          ServiceProviderDetailsRoute.name,
          args: ServiceProviderDetailsRouteArgs(
            serviceProvider: serviceProvider,
            relatedServiceProviders: relatedServiceProviders,
            serviceProviderReviews: serviceProviderReviews,
            serviceProviderPortfolio: serviceProviderPortfolio,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceProviderDetailsRoute';

  static const _i41.PageInfo<ServiceProviderDetailsRouteArgs> page =
      _i41.PageInfo<ServiceProviderDetailsRouteArgs>(name);
}

class ServiceProviderDetailsRouteArgs {
  const ServiceProviderDetailsRouteArgs({
    required this.serviceProvider,
    required this.relatedServiceProviders,
    required this.serviceProviderReviews,
    required this.serviceProviderPortfolio,
    this.key,
  });

  final _i42.ServiceProvider serviceProvider;

  final List<_i42.ServiceProvider> relatedServiceProviders;

  final List<_i42.ServiceProviderReview> serviceProviderReviews;

  final List<_i42.ServiceProviderPortfolio> serviceProviderPortfolio;

  final _i42.Key? key;

  @override
  String toString() {
    return 'ServiceProviderDetailsRouteArgs{serviceProvider: $serviceProvider, relatedServiceProviders: $relatedServiceProviders, serviceProviderReviews: $serviceProviderReviews, serviceProviderPortfolio: $serviceProviderPortfolio, key: $key}';
  }
}

/// generated route for
/// [_i32.ServiceProviderPortfolioScreen]
class ServiceProviderPortfolioRoute extends _i41.PageRouteInfo<void> {
  const ServiceProviderPortfolioRoute({List<_i41.PageRouteInfo>? children})
      : super(
          ServiceProviderPortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceProviderPortfolioRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i33.ServiceProvidersScreen]
class ServiceProvidersRoute
    extends _i41.PageRouteInfo<ServiceProvidersRouteArgs> {
  ServiceProvidersRoute({
    required List<_i42.ServiceProviderReview> serviceProviderReview,
    required String serviceDescription,
    required String serviceId,
    _i42.Key? key,
    List<_i41.PageRouteInfo>? children,
  }) : super(
          ServiceProvidersRoute.name,
          args: ServiceProvidersRouteArgs(
            serviceProviderReview: serviceProviderReview,
            serviceDescription: serviceDescription,
            serviceId: serviceId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceProvidersRoute';

  static const _i41.PageInfo<ServiceProvidersRouteArgs> page =
      _i41.PageInfo<ServiceProvidersRouteArgs>(name);
}

class ServiceProvidersRouteArgs {
  const ServiceProvidersRouteArgs({
    required this.serviceProviderReview,
    required this.serviceDescription,
    required this.serviceId,
    this.key,
  });

  final List<_i42.ServiceProviderReview> serviceProviderReview;

  final String serviceDescription;

  final String serviceId;

  final _i42.Key? key;

  @override
  String toString() {
    return 'ServiceProvidersRouteArgs{serviceProviderReview: $serviceProviderReview, serviceDescription: $serviceDescription, serviceId: $serviceId, key: $key}';
  }
}

/// generated route for
/// [_i34.SignInScreen]
class SignInRoute extends _i41.PageRouteInfo<void> {
  const SignInRoute({List<_i41.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i35.SignUpScreen]
class SignUpRoute extends _i41.PageRouteInfo<void> {
  const SignUpRoute({List<_i41.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i36.TermasAndConditionsScreen]
class TermasAndConditionsRoute extends _i41.PageRouteInfo<void> {
  const TermasAndConditionsRoute({List<_i41.PageRouteInfo>? children})
      : super(
          TermasAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermasAndConditionsRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i37.VerificationScreen]
class VerificationRoute extends _i41.PageRouteInfo<void> {
  const VerificationRoute({List<_i41.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i38.VideoCallScreen]
class VideoCallRoute extends _i41.PageRouteInfo<void> {
  const VideoCallRoute({List<_i41.PageRouteInfo>? children})
      : super(
          VideoCallRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i39.WalletBalnceScreen]
class WalletBalnceRoute extends _i41.PageRouteInfo<void> {
  const WalletBalnceRoute({List<_i41.PageRouteInfo>? children})
      : super(
          WalletBalnceRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletBalnceRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}

/// generated route for
/// [_i40.WelcomeScreen]
class WelcomeRoute extends _i41.PageRouteInfo<void> {
  const WelcomeRoute({List<_i41.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i41.PageInfo<void> page = _i41.PageInfo<void>(name);
}
