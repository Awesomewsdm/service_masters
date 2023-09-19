// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';
import 'package:home_service_app/src/screens/auth_screens/login_screen.dart';
import 'package:home_service_app/src/screens/auth_screens/password_reset/password_reset.dart';
import 'package:home_service_app/src/screens/change_password_screen.dart';
import 'package:home_service_app/src/screens/home_screen.dart';
import 'package:home_service_app/src/screens/profile_screen.dart';
import 'package:home_service_app/src/screens/welcome_screen.dart';

const String pHome = '/home';
const String pLogin = '/login';
const String pWelcome = '/welcome';
const String pPasswordReset = '/password-reset';
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
        path: pPasswordReset,
        builder: (context, state) => PasswordResetScreen(),
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
