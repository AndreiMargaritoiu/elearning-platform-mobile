import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

import 'package:elearning_platform_mobile/src/data/auth_api.dart';
import 'package:elearning_platform_mobile/src/data/mentoring_api.dart';
import 'package:elearning_platform_mobile/src/data/playlists_api.dart';
import 'package:elearning_platform_mobile/src/data/posts_api.dart';
import 'package:elearning_platform_mobile/src/data/tracking_api.dart';
import 'package:elearning_platform_mobile/src/data/videos_api.dart';
import 'package:elearning_platform_mobile/src/epics/auth_epics.dart';
import 'package:elearning_platform_mobile/src/epics/mentoring_epics.dart';
import 'package:elearning_platform_mobile/src/epics/playlists_epics.dart';
import 'package:elearning_platform_mobile/src/epics/posts_epics.dart';
import 'package:elearning_platform_mobile/src/epics/tracking_epics.dart';
import 'package:elearning_platform_mobile/src/epics/videos_epics.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class AppEpics {
  const AppEpics(
      {@required AuthApi authApi,
      @required PostsApi postsApi,
      @required VideosApi videosApi,
      @required MentoringApi mentoringApi,
      @required TrackingApi trackingApi,
      @required PlaylistsApi playlistsApi})
      : assert(authApi != null),
        assert(postsApi != null),
        assert(videosApi != null),
        assert(playlistsApi != null),
        assert(mentoringApi != null),
        assert(trackingApi != null),
        _authApi = authApi,
        _postsApi = postsApi,
        _videosApi = videosApi,
        _mentoringApi = mentoringApi,
        _trackingApi = trackingApi,
        _playlistApi = playlistsApi;

  final AuthApi _authApi;
  final PostsApi _postsApi;
  final VideosApi _videosApi;
  final PlaylistsApi _playlistApi;
  final MentoringApi _mentoringApi;
  final TrackingApi _trackingApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        AuthEpics(api: _authApi).epics,
        PostsEpics(api: _postsApi).epics,
        VideosEpics(api: _videosApi).epics,
        PlaylistsEpics(api: _playlistApi).epics,
        MentoringEpics(api: _mentoringApi).epics,
        TrackingEpics(api: _trackingApi).epics,
      ],
    );
  }
}
