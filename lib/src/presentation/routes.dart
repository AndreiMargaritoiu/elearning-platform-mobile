import 'package:elearning_platform_mobile/src/presentation/videos/add_video_page.dart';
import 'package:elearning_platform_mobile/src/presentation/videos/video_details_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/video_player_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:elearning_platform_mobile/src/presentation/home.dart';
import 'package:elearning_platform_mobile/src/presentation/login/reset_password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/posts/create_post.dart';
import 'package:elearning_platform_mobile/src/presentation/posts/post_details.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/signup_page.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/username_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signup = '/signup';
  static const String username = '/username';
  static const String password = '/password';
  static const String resetPassword = '/resetPassword';
  static const String createPost = '/createPost';
  static const String postDetails = '/postDetails';
  static const String addVideo = '/addVideo';
  static const String videoDetails = '/videoDetails';
  static const String searchUsers = '/searchUsers';
  static const String videoPlayer = '/videoPlayer';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },
    signup: (BuildContext context) {
      return const SignupPage();
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
    createPost: (BuildContext context) {
      return const CreatePost();
    },
    postDetails: (BuildContext context) {
      return const PostDetails();
    },
    addVideo: (BuildContext context) {
      return const AddVideoPage();
    },
    videoDetails: (BuildContext context) {
      return const VideoDetailsPage();
    },
    searchUsers: (BuildContext context) {
      return const SearchUsersPage();
    },
    videoPlayer: (BuildContext context) {
      return VideoPlayerScreen(path: ModalRoute.of(context).settings.arguments);
    },
  };
}
