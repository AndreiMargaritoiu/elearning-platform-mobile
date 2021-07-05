import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

import 'package:elearning_platform_mobile/src/data/auth_api.dart';
import 'package:elearning_platform_mobile/src/data/mentoring_api.dart';
import 'package:elearning_platform_mobile/src/data/playlists_api.dart';
import 'package:elearning_platform_mobile/src/data/tracking_api.dart';
import 'package:elearning_platform_mobile/src/data/videos_api.dart';
import 'package:elearning_platform_mobile/src/epics/auth_epics.dart';
import 'package:elearning_platform_mobile/src/epics/mentoring_epics.dart';
import 'package:elearning_platform_mobile/src/epics/playlists_epics.dart';
import 'package:elearning_platform_mobile/src/epics/tracking_epics.dart';
import 'package:elearning_platform_mobile/src/epics/videos_epics.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/data/inquiries_api.dart';
import 'package:elearning_platform_mobile/src/data/workshops_api.dart';
import 'package:elearning_platform_mobile/src/epics/inquiries_epics.dart';
import 'package:elearning_platform_mobile/src/epics/workshops_epics.dart';

class AppEpics {
  const AppEpics(
      {@required AuthApi authApi,
      @required VideosApi videosApi,
      @required MentoringApi mentoringApi,
      @required TrackingApi trackingApi,
      @required WorkshopsApi workshopsApi,
      @required InquiriesApi inquiriesApi,
      @required PlaylistsApi playlistsApi})
      : assert(authApi != null),
        assert(videosApi != null),
        assert(playlistsApi != null),
        assert(mentoringApi != null),
        assert(workshopsApi != null),
        assert(inquiriesApi != null),
        assert(trackingApi != null),
        _authApi = authApi,
        _videosApi = videosApi,
        _mentoringApi = mentoringApi,
        _trackingApi = trackingApi,
        _workshopsApi = workshopsApi,
        _inquiriesApi = inquiriesApi,
        _playlistApi = playlistsApi;

  final AuthApi _authApi;
  final VideosApi _videosApi;
  final PlaylistsApi _playlistApi;
  final MentoringApi _mentoringApi;
  final TrackingApi _trackingApi;
  final WorkshopsApi _workshopsApi;
  final InquiriesApi _inquiriesApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        AuthEpics(api: _authApi).epics,
        VideosEpics(api: _videosApi).epics,
        PlaylistsEpics(api: _playlistApi).epics,
        MentoringEpics(api: _mentoringApi).epics,
        TrackingEpics(api: _trackingApi).epics,
        WorkshopsEpics(api: _workshopsApi).epics,
        InquiriesEpics(api: _inquiriesApi).epics,
      ],
    );
  }
}
