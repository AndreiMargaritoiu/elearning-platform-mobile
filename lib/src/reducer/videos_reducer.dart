import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/videos/index.dart';

Reducer<VideosState> videosReducer = combineReducers(
  <Reducer<VideosState>>[
    TypedReducer<VideosState, UpdateVideoInfo>(_updateVideoInfo),
    TypedReducer<VideosState, AddVideoSuccessful>(_addVideoSuccessful),
    TypedReducer<VideosState, GetVideosByUidSuccessful>(
        _getVideosByUidSuccessful),
    TypedReducer<VideosState, GetVideosByPlaylistIdSuccessful>(
        _getVideosByPlaylistIdSuccessful),
    TypedReducer<VideosState, ListenForVideosSuccessful>(
        _listenForVideosSuccessful),
  ],
);

VideosState _updateVideoInfo(VideosState state, UpdateVideoInfo action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      if (action.addVideo != null) {
        b.info.videoPath = action.addVideo;
      } else if (action.removeVideo != null) {
        b.info.videoPath = null;
      } else if (action.addThumbnail != null) {
        b.info.thumbnailPath = action.addThumbnail;
      } else if (action.removeThumbnail != null) {
        b.info.thumbnailPath = null;
      } else if (action.title != null) {
        b.info.title = action.title;
      } else if (action.description != null) {
        b.info.description = action.description;
      } else {
        b.info = VideoInfo().toBuilder();
      }
    },
  );
}

VideosState _addVideoSuccessful(VideosState state, AddVideoSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.info = VideoInfo().toBuilder();
    },
  );
}

VideosState _listenForVideosSuccessful(
    VideosState state, ListenForVideosSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.videos = ListBuilder<Video>(action.videos);
    },
  );
}

VideosState _getVideosByUidSuccessful(
    VideosState state, GetVideosByUidSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.videos = ListBuilder<Video>(action.videos);
    },
  );
}

VideosState _getVideosByPlaylistIdSuccessful(
    VideosState state, GetVideosByPlaylistIdSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.videos = ListBuilder<Video>(action.videos);
    },
  );
}
