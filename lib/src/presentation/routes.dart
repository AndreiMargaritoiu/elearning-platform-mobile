import 'package:elearning_platform_mobile/src/presentation/auth/reset_password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/auth/signup_page.dart';
import 'package:elearning_platform_mobile/src/presentation/home.dart';
import 'package:elearning_platform_mobile/src/presentation/videos/add_video_page.dart';
import 'package:elearning_platform_mobile/src/presentation/videos/video_details_page.dart';
import 'package:flutter/cupertino.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String resetPassword = '/resetPassword';
  static const String addVideo = '/addVideo';
  static const String videoDetails = '/videoDetails';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },
    signUp: (BuildContext context) {
      return const SignUpPage();
    },
    resetPassword: (BuildContext context) {
      return const ResetPasswordPage();
    },
    addVideo: (BuildContext context) {
      return const AddVideoPage();
    },
    videoDetails: (BuildContext context) {
      return const VideoDetailsPage();
    },
  };
}