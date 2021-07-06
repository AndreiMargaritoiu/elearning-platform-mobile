import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/playlists_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class PlaylistsEpics {
  const PlaylistsEpics({@required PlaylistsApi api})
      : assert(api != null),
        _api = api;

  final PlaylistsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, CreatePlaylist$>(_addPlaylist),
        TypedEpic<AppState, GetPlaylists$>(_getPlaylists),
        TypedEpic<AppState, UpdatePlaylist$>(_updatePlaylist),
        TypedEpic<AppState, DeletePlaylist$>(_deletePlaylist),
        TypedEpic<AppState, SearchPlaylists$>(_searchPlaylists),
      ],
    );
  }

  Stream<AppAction> _addPlaylist(
      Stream<CreatePlaylist$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (CreatePlaylist$ action) => Stream<CreatePlaylist$>.value(action)
          .asyncMap(
            (CreatePlaylist$ action) => _api.createPlaylist(
                store.state.playlists.info, store.state.auth.user.uid),
          )
          .map(
            (Playlist playlist) => CreatePlaylist.successful(playlist),
          )
          .onErrorReturnWith(
            (dynamic error) => CreatePlaylist.error(error),
          ),
    );
  }

  Stream<AppAction> _updatePlaylist(
      Stream<UpdatePlaylist$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (UpdatePlaylist$ action) => Stream<UpdatePlaylist$>.value(action)
          .asyncMap(
            (UpdatePlaylist$ action) => _api.updatePlaylist(
                store.state.playlists.info, action.id,
                newVideos: action.newVideos),
          )
          .map(
            (Playlist playlist) => UpdatePlaylist.successful(playlist),
          )
          .onErrorReturnWith(
            (dynamic error) => UpdatePlaylist.error(error),
          ),
    );
  }

  Stream<AppAction> _deletePlaylist(
      Stream<DeletePlaylist$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (DeletePlaylist$ action) => Stream<DeletePlaylist$>.value(action)
          .asyncMap(
            (DeletePlaylist$ action) => _api.deletePlaylist(action.id),
          )
          .mapTo(
            const DeletePlaylist.successful(),
          )
          .onErrorReturnWith(
            (dynamic error) => DeletePlaylist.error(error),
          ),
    );
  }

  Stream<AppAction> _getPlaylists(
      Stream<GetPlaylists$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetPlaylists$ action) => Stream<GetPlaylists$>.value(action)
          .asyncMap(
            (GetPlaylists$ action) => _api.getPlaylists(
              category: action.category,
              userId: action.userId == 'me'
                  ? store.state.auth.user.uid
                  : action.userId,
            ),
          )
          .expand(
            (List<Playlist> playlists) => <AppAction>[
              GetPlaylists.successful(playlists),
              ...playlists
                  .map((Playlist playlist) => playlist.uid)
                  .toSet()
                  .where((String uid) => store.state.auth.users[uid] == null)
                  .map(
                    (String uid) => GetUser(uid),
                  ),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetPlaylists.error(error),
          ),
    );
  }

  Stream<AppAction> _searchPlaylists(
      Stream<SearchPlaylists$> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(
          const Duration(milliseconds: 500),
        )
        .flatMap(
          (SearchPlaylists$ action) => Stream<SearchPlaylists$>.value(action)
              .asyncMap(
                (SearchPlaylists$ action) => _api.searchPlaylists(
                    action.query, store.state.auth.user.uid),
              )
              .map(
                (List<Playlist> playlists) =>
                    SearchPlaylists.successful(playlists),
              )
              .onErrorReturnWith(
                (dynamic error) => SearchPlaylists.error(error),
              ),
        );
  }
}
