import 'package:elearning_platform_mobile/src/data/auth_api.dart';
import 'package:elearning_platform_mobile/src/data/video_api.dart';
import 'package:elearning_platform_mobile/src/epics/auth_epics.dart';
import 'package:elearning_platform_mobile/src/epics/videos_epics.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import'package:meta/meta.dart';

class AppEpics {
  const AppEpics({@required AuthApi authApi, @required VideosApi videosApi})
      :assert(authApi != null),
        assert(videosApi != null),
        _authApi = authApi,
        _videosApi = videosApi;

  final AuthApi _authApi;
  final VideosApi _videosApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      VideosEpics(api: _videosApi).epics
    ]);
  }
}