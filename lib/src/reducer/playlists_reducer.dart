import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/playlists/index.dart';

Reducer<PlaylistsState> playlistsReducer = combineReducers(
  <Reducer<PlaylistsState>>[
    TypedReducer<PlaylistsState, UpdatePlaylistInfo>(_updatePlaylistInfo),
    TypedReducer<PlaylistsState, CreatePlaylistSuccessful>(
        _createPlaylistSuccessful),
    TypedReducer<PlaylistsState, GetPlaylistsSuccessful>(
        _getPlaylistsSuccessful),
    TypedReducer<PlaylistsState, SearchPlaylistsSuccessful>(
        _searchPlaylistsSuccessful),
    TypedReducer<PlaylistsState, UpdatePlaylistSuccessful>(
        _updatePlaylistSuccessful),
    TypedReducer<PlaylistsState, DeletePlaylistSuccessful>(
        _deletePlaylistSuccessful),
  ],
);

PlaylistsState _updatePlaylistInfo(
    PlaylistsState state, UpdatePlaylistInfo action) {
  return state.rebuild((PlaylistsStateBuilder b) {
    if (action.addVideoRef != null) {
      b.info.videoRefs.add(action.addVideoRef);
    } else if (action.removeVideoRef != null) {
      b.info.videoRefs.remove(action.removeVideoRef);
    } else if (action.addThumbnail != null) {
      b.info.thumbnailPath = action.addThumbnail;
    } else if (action.removeThumbnail != null) {
      b.info.thumbnailPath = null;
    } else if (action.description != null) {
      b.info.description = action.description;
    } else if (action.title != null) {
      b.info.title = action.title;
    } else if (action.category != null) {
      b.info.category = action.category;
    } else {
      b.info = PlaylistInfo().toBuilder();
    }
  });
}

PlaylistsState _createPlaylistSuccessful(
    PlaylistsState state, CreatePlaylistSuccessful action) {
  return state.rebuild(
    (PlaylistsStateBuilder b) {
      b.info = PlaylistInfo().toBuilder();
    },
  );
}

PlaylistsState _updatePlaylistSuccessful(
    PlaylistsState state, UpdatePlaylistSuccessful action) {
  return state.rebuild(
    (PlaylistsStateBuilder b) {
      b.playlists.removeWhere(
          (Playlist playlist) => playlist.id == action.playlist.id);
      b.playlists.insert(0, action.playlist);
    },
  );
}

PlaylistsState _deletePlaylistSuccessful(
    PlaylistsState state, DeletePlaylistSuccessful action) {
  return state.rebuild(
    (PlaylistsStateBuilder b) {
      b.playlists.removeWhere((Playlist playlist) => playlist.id == action.id);
    },
  );
}

PlaylistsState _getPlaylistsSuccessful(
    PlaylistsState state, GetPlaylistsSuccessful action) {
  return state.rebuild(
    (PlaylistsStateBuilder b) {
      b.playlists = ListBuilder<Playlist>(action.playlists);
    },
  );
}

PlaylistsState _searchPlaylistsSuccessful(
    PlaylistsState state, SearchPlaylistsSuccessful action) {
  return state.rebuild(
    (PlaylistsStateBuilder b) {
      b.searchResult = ListBuilder<Playlist>(action.playlists);
    },
  );
}
