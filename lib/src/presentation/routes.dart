import 'package:elearning_platform_mobile/src/presentation/home.dart';
import 'package:elearning_platform_mobile/src/presentation/login/reset_password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/signup_page.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/username_page.dart';
import 'package:flutter/cupertino.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String username = '/username';
  static const String password = '/password';
  static const String resetPassword = '/resetPassword';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },
    signUp: (BuildContext context) {
      return const SignUpPage();
    },
    username: (BuildContext context) {
      return const UsernamePage();
    },
    password: (BuildContext context) {
      return const PasswordPage();
    },
    resetPassword: (BuildContext context) {
      return const ResetPasswordPage();
    },
  };
}