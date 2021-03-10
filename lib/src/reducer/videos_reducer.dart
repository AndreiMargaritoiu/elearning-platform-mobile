import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/videos/index.dart';
import 'package:redux/redux.dart';

Reducer<VideosState> videosReducer = combineReducers(<Reducer<VideosState>>[
  TypedReducer<VideosState, UpdateVideoInfo>(_updateVideoInfo),
]);

VideosState _updateVideoInfo(VideosState state, UpdateVideoInfo action) {
  return state.rebuild((VideosStateBuilder b) {
    if (action.addVideo != null) {
      b.info.path = action.addVideo;
    } else if (action.removeVideo != null) {
      b.info.path = '';
    } else if (action.description != null) {
      b.info.description = action.description;
    }
      b.info = VideoInfo().toBuilder();
  });
}
