import 'package:elearning_platform_mobile/src/actions/tracking/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<TrackingsState> trackingReducer =
combineReducers(<Reducer<TrackingsState>>[
  TypedReducer<TrackingsState, UpdateTrackingInfo>(_updateTrackingInfo),
  TypedReducer<TrackingsState, TrackActionSuccessful>(
      _trackActionSuccessful),
]);

TrackingsState _updateTrackingInfo(
    TrackingsState state, UpdateTrackingInfo action) {
  return state.rebuild((TrackingsStateBuilder b) {
    if (action.vid != null) {
      b.info.vid = action.vid;
    }  else {
      b.info = TrackingInfo().toBuilder();
    }
  });
}

TrackingsState _trackActionSuccessful(
    TrackingsState state, TrackActionSuccessful action) {
  return state.rebuild((TrackingsStateBuilder b) {
    b.info = TrackingInfo().toBuilder();
  });
}
