import "package:flutter/material.dart";
import "package:home_service_app/src/screens/auth_screens/login_screen.dart";
import "package:home_service_app/src/screens/change_password_screen.dart";
import "package:home_service_app/src/screens/home_screen.dart";
import "package:home_service_app/src/screens/profile_screen.dart";
import "package:home_service_app/src/screens/welcome_screen.dart";

const String home = "/home";
const String login = "/login";
const String welcome = "/welcome";
const String resetPassword = "/password-reset";
const String profile = "/profile";
const String changePassword = "/change-password";

Map<String, Widget Function(BuildContext context)> getRoutes() {
  return {
    login: (context) => LoginScreen(),
    home: (context) => HomeScreen(),
    welcome: (context) => const WelcomeScreen(),
    // resetPassword: (context) => const PasswordResetScreen(),
    profile: (context) => const ProfileScreen(),
    changePassword: (context) => const ChangePasswordScreen(),
  };
}
