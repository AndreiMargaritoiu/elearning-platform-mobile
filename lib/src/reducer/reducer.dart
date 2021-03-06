import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/reducer/auth_reducer.dart';
import 'package:elearning_platform_mobile/src/reducer/mentoring_reducer.dart';
import 'package:elearning_platform_mobile/src/reducer/playlists_reducer.dart';
import 'package:elearning_platform_mobile/src/reducer/tracking_reducer.dart';
import 'package:elearning_platform_mobile/src/reducer/videos_reducer.dart';
import 'package:elearning_platform_mobile/src/reducer/inquiries_reducer.dart';
import 'package:elearning_platform_mobile/src/reducer/workshops_reducer.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  print(action);
  return state.rebuild(
    (AppStateBuilder b) {
      b
        ..auth = authReducer(state.auth, action).toBuilder()
        ..videos = videosReducer(state.videos, action).toBuilder()
        ..playlists = playlistsReducer(state.playlists, action).toBuilder()
        ..trackedItems = trackingReducer(state.trackedItems, action).toBuilder()
        ..workshops = workshopsReducer(state.workshops, action).toBuilder()
        ..inquiries = inquiriesReducer(state.inquiries, action).toBuilder()
        ..mentorships = mentoringReducer(state.mentorships, action).toBuilder();
    },
  );
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return AppState.initialState();
}
