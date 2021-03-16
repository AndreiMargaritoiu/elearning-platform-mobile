import 'package:built_collection/built_collection.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/playlists/index.dart';
import 'package:redux/redux.dart';

Reducer<PlaylistsState> playlistsReducer =
    combineReducers(<Reducer<PlaylistsState>>[
  TypedReducer<PlaylistsState, UpdatePlaylistInfo>(_updatePlaylistInfo),
  TypedReducer<PlaylistsState, CreatePlaylistSuccessful>(
      _createPlaylistSuccessful),
  TypedReducer<PlaylistsState, GetMyPlaylistsSuccessful>(
      _getMyPlaylistsSuccessful),
  TypedReducer<PlaylistsState, GetAllPlaylistsSuccessful>(
      _getAllPlaylistsSuccessful),
]);

PlaylistsState _updatePlaylistInfo(
    PlaylistsState state, UpdatePlaylistInfo action) {
  return state.rebuild((PlaylistsStateBuilder b) {
    if (action.addVideoRef != null) {
      b.info.videoRefs.add(action.addVideoRef);
    } else if (action.removeVideoRef != null) {
      b.info.videoRefs.remove(action.removeVideoRef);
    } else if (action.description != null) {
      b.info.description = action.description;
    } else if (action.title != null) {
      b.info.title = action.title;
    } else if (action.category != null) {
      b.info.category = action.category;
    }else {
      b.info = PlaylistInfo().toBuilder();
    }
  });
}

PlaylistsState _createPlaylistSuccessful(
    PlaylistsState state, CreatePlaylistSuccessful action) {
  return state.rebuild((PlaylistsStateBuilder b) {
    b.info = PlaylistInfo().toBuilder();
  });
}

PlaylistsState _getAllPlaylistsSuccessful(
    PlaylistsState state, GetAllPlaylistsSuccessful action) {
  return state.rebuild((PlaylistsStateBuilder b) {
    b.playlists = ListBuilder<Playlist>(action.playlists);
  });
}

PlaylistsState _getMyPlaylistsSuccessful(
    PlaylistsState state, GetMyPlaylistsSuccessful action) {
  return state.rebuild((PlaylistsStateBuilder b) {
    b.playlists = ListBuilder<Playlist>(action.playlists);
  });
}
