import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/videos/index.dart';

Reducer<VideosState> videosReducer = combineReducers(
  <Reducer<VideosState>>[
    TypedReducer<VideosState, UpdateVideoInfo>(_updateVideoInfo),
    TypedReducer<VideosState, AddVideoSuccessful>(_addVideoSuccessful),
    TypedReducer<VideosState, GetVideosSuccessful>(_getVideosSuccessful),
    TypedReducer<VideosState, SearchVideosSuccessful>(_searchVideosSuccessful),
    TypedReducer<VideosState, UpdateVideoSuccessful>(_updateVideoSuccessful),
    TypedReducer<VideosState, DeleteVideoSuccessful>(_deleteVideoSuccessful),
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

VideosState _getVideosSuccessful(
    VideosState state, GetVideosSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.videos = ListBuilder<Video>(action.videos);
    },
  );
}

VideosState _searchVideosSuccessful(
    VideosState state, SearchVideosSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.searchResult = ListBuilder<Video>(action.videos);
    },
  );
}

VideosState _updateVideoSuccessful(
    VideosState state, UpdateVideoSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.videos.removeWhere((Video video) => video.id == action.video.id);
      b.videos.insert(0, action.video);
    },
  );
}

VideosState _deleteVideoSuccessful(
    VideosState state, DeleteVideoSuccessful action) {
  return state.rebuild(
    (VideosStateBuilder b) {
      b.videos.removeWhere((Video video) => video.id == action.id);
    },
  );
}
