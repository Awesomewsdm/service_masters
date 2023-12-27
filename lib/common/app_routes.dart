// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';
import 'package:home_service_app/login/view/login_screen.dart';
import 'package:home_service_app/src/screens/auth_screens/password_reset/enter_phone_number_screen.dart';
import 'package:home_service_app/src/screens/auth_screens/password_reset/enter_email_address_screen.dart';
import 'package:home_service_app/change_password/view/change_password_screen.dart';
import 'package:home_service_app/home/view/home_screen.dart';
import 'package:home_service_app/profile/view/profile_screen.dart';
import 'package:home_service_app/welcome_user/view/welcome_screen.dart';

const String pHome = '/home';
const String pLogin = '/login';
const String pWelcome = '/welcome';
const String pEnterPhoneNumber = '/enter-phone-number';
const String pEnterEmail = '/enter-email';

const String pHome2 = "/home2";
const String pProfileScreen = "/profile";
const String pChangePasswordScreen = "/change-password";

class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: pWelcome, // Set the initial route
    routes: [
      GoRoute(
        path: pHome,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: pLogin,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: pWelcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: pEnterEmail,
        builder: (context, state) => EnterEmailScreen(),
      ),
      GoRoute(
        path: pEnterPhoneNumber,
        builder: (context, state) => EnterPhoneScreen(),
      ),
      GoRoute(
        path: pProfileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: pChangePasswordScreen,
        builder: (context, state) => const ChangePasswordScreen(),
      ),
    ],
  );
  static GoRouter get router => _router;
}
