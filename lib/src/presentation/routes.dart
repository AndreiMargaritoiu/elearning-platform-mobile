import 'package:elearning_platform_mobile/src/presentation/discover/search_page.dart';
import 'package:elearning_platform_mobile/src/presentation/playlists/playlists_feed_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/following_list_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/others_profile_page.dart';
import 'package:elearning_platform_mobile/src/presentation/trending/trending_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:elearning_platform_mobile/src/presentation/mentoring/add_mentorship_page.dart';
import 'package:elearning_platform_mobile/src/presentation/mentoring/mentoring_page.dart';
import 'package:elearning_platform_mobile/src/presentation/playlists/create_playlsit_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/edit_playlist_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/edit_video_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/profile_page.dart';
import 'package:elearning_platform_mobile/src/presentation/videos/add_video_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/video_player_page.dart';
import 'package:elearning_platform_mobile/src/presentation/home.dart';
import 'package:elearning_platform_mobile/src/presentation/login/reset_password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/posts/create_post.dart';
import 'package:elearning_platform_mobile/src/presentation/posts/post_details.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/password_page.dart';
import 'package:elearning_platform_mobile/src/presentation/signup/username_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';
import 'package:elearning_platform_mobile/src/presentation/login/signup_page.dart';
import 'package:elearning_platform_mobile/src/presentation/mentoring/edit_mentorship_page.dart';
import 'package:elearning_platform_mobile/src/presentation/videos/playlist_videos_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String username = '/username';
  static const String password = '/password';
  static const String resetPassword = '/resetPassword';
  static const String createPost = '/createPost';
  static const String postDetails = '/postDetails';
  static const String addVideoPage = '/addVideoPage';
  static const String searchUsers = '/searchUsers';
  static const String searchPage = '/searchPage';
  static const String videoPlayer = '/videoPlayer';
  static const String createPlaylistPage = '/createPlaylistPage';
  static const String profilePage = '/profilePage';
  static const String editVideoPage = '/editVideoPage';
  static const String editPlaylistPage = '/editPlaylistPage';
  static const String mentoringPage = '/mentoringPage';
  static const String addMentorshipPage = '/addMentorshipPage';
  static const String editMentorshipPage = '/editMentorshipPage';
  static const String playlistVideosPage = '/playlistVideosPage';
  static const String othersProfilePage = '/othersProfilePage';
  static const String trendingPage = '/trendingPage';
  static const String playlistsFeed = '/playlistsFeed';
  static const String followingListPage = '/followingListPage';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },
    signUp: (BuildContext context) {
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
    addVideoPage: (BuildContext context) {
      return const AddVideoPage();
    },
    searchUsers: (BuildContext context) {
      return const SearchUsersPage();
    },
    searchPage: (BuildContext context) {
      return const SearchPage();
    },
    videoPlayer: (BuildContext context) {
      return VideoPlayerScreen(
          currentVideo: ModalRoute.of(context).settings.arguments);
    },
    createPlaylistPage: (BuildContext context) {
      return const CreatePlaylistPage();
    },
    profilePage: (BuildContext context) {
      return const ProfilePage();
    },
    editVideoPage: (BuildContext context) {
      return EditVideoPage(
          currentVideo: ModalRoute.of(context).settings.arguments);
    },
    editPlaylistPage: (BuildContext context) {
      return EditPlaylistPage(
          currentPlaylist: ModalRoute.of(context).settings.arguments);
    },
    mentoringPage: (BuildContext context) {
      return const MentoringPage();
    },
    addMentorshipPage: (BuildContext context) {
      return const AddMentorshipPage();
    },
    editMentorshipPage: (BuildContext context) {
      return EditMentorshipPage(
          currentMentorship: ModalRoute.of(context).settings.arguments);
    },
    playlistVideosPage: (BuildContext context) {
      return PlaylistVideosPage(
          playlist: ModalRoute.of(context).settings.arguments);
    },
    othersProfilePage: (BuildContext context) {
      return OthersProfilePage(
          searchedUser: ModalRoute.of(context).settings.arguments);
    },
    trendingPage: (BuildContext context) {
      return TrendingPage(
          trendingVideos: ModalRoute.of(context).settings.arguments);
    },
    playlistsFeed: (BuildContext context) {
      return PlaylistsFeedPage(
          category: ModalRoute.of(context).settings.arguments);
    },
    followingListPage: (BuildContext context) {
      return FollowingListPage(
          currentUser: ModalRoute.of(context).settings.arguments);
    },
  };
}
