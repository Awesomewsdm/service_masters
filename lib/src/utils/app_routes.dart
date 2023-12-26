import "package:flutter/material.dart";
import "package:home_service_app/login/view/login_screen.dart";
import 'package:home_service_app/change_password/view/change_password_screen.dart';
import 'package:home_service_app/home/view/home_screen.dart';
import 'package:home_service_app/profile/view/profile_screen.dart';
import 'package:home_service_app/welcome_user/view/welcome_screen.dart';

const String home = "/home";
const String login = "/login";
const String welcome = "/welcome";
const String resetPassword = "/password-reset";
const String profile = "/profile";
const String changePassword = "/change-password";

Map<String, Widget Function(BuildContext context)> getRoutes() {
  return {
    login: (context) => LoginScreen(),
    home: (context) => const HomeScreen(),
    welcome: (context) => const WelcomeScreen(),
    // resetPassword: (context) => const PasswordResetScreen(),
    profile: (context) => const ProfileScreen(),
    changePassword: (context) => const ChangePasswordScreen(),
  };
}
