import 'package:elearning_platform_mobile/src/data/auth_api.dart';
import 'package:elearning_platform_mobile/src/data/posts_api.dart';
import 'package:elearning_platform_mobile/src/data/videos_api.dart';
import 'package:elearning_platform_mobile/src/epics/auth_epics.dart';
import 'package:elearning_platform_mobile/src/epics/posts_epics.dart';
import 'package:elearning_platform_mobile/src/epics/videos_epics.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics(
      {@required AuthApi authApi,
      @required PostsApi postsApi,
      @required VideosApi videosApi})
      : assert(authApi != null),
        assert(postsApi != null),
        assert(videosApi != null),
        _authApi = authApi,
        _postsApi = postsApi,
        _videosApi = videosApi;

  final AuthApi _authApi;
  final PostsApi _postsApi;
  final VideosApi _videosApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      PostsEpics(api: _postsApi).epics,
      VideosEpics(api: _videosApi).epics,
    ]);
  }
}
