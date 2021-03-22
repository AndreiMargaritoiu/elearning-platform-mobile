import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/playlists_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PlaylistsEpics {
  const PlaylistsEpics({@required PlaylistsApi api})
      : assert(api != null),
        _api = api;

  final PlaylistsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreatePlaylist$>(_addPlaylist),
      TypedEpic<AppState, GetAllPlaylists$>(_getAllPlaylists),
      TypedEpic<AppState, GetMyPlaylists$>(_getMyPlaylists),
      TypedEpic<AppState, UpdatePlaylist$>(_updatePlaylist),
      TypedEpic<AppState, DeletePlaylist$>(_deletePlaylist),
    ]);
  }

  Stream<AppAction> _addPlaylist(
      Stream<CreatePlaylist$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePlaylist$ action) => Stream<CreatePlaylist$>.value(
                action)
            .asyncMap((CreatePlaylist$ action) => _api.createPlaylist(
                store.state.playlists.info, store.state.auth.user.uid))
            .map((Playlist playlist) => CreatePlaylist.successful(playlist))
            .onErrorReturnWith((dynamic error) => CreatePlaylist.error(error)));
  }

  Stream<AppAction> _updatePlaylist(
      Stream<UpdatePlaylist$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdatePlaylist$ action) => Stream<UpdatePlaylist$>.value(
                action)
            .asyncMap((UpdatePlaylist$ action) => _api.updatePlaylist(
                store.state.playlists.info, action.id,
                newVideos: action.newVideos))
            .map((Playlist playlist) => UpdatePlaylist.successful(playlist))
            .onErrorReturnWith((dynamic error) => UpdatePlaylist.error(error)));
  }

  Stream<AppAction> _deletePlaylist(
      Stream<DeletePlaylist$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeletePlaylist$ action) => Stream<DeletePlaylist$>.value(
                action)
            .asyncMap(
                (DeletePlaylist$ action) => _api.deletePlaylist(action.id))
            .mapTo(const DeletePlaylist.successful())
            .onErrorReturnWith((dynamic error) => DeletePlaylist.error(error)));
  }

  Stream<AppAction> _getPlaylistById(
      Stream<GetPlaylistById$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetPlaylistById$ action) =>
            Stream<GetPlaylistById$>.value(action)
                .asyncMap((GetPlaylistById$ action) =>
                    _api.getPlaylistById(id: action.id))
                .expand((Playlist playlist) => <AppAction>[
                      GetPlaylistById.successful(playlist),
                    ])
                .onErrorReturnWith(
                    (dynamic error) => GetPlaylistById.error(error)));
  }

  Stream<AppAction> _getAllPlaylists(
      Stream<GetAllPlaylists$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetAllPlaylists$ action) =>
            Stream<GetAllPlaylists$>.value(action)
                .asyncMap((GetAllPlaylists$ action) => _api.getAllPlaylists())
                .expand((List<Playlist> playlists) => <AppAction>[
                      GetAllPlaylists.successful(playlists),
                      ...playlists
                          .map((Playlist playlist) => playlist.uid)
                          .toSet()
                          .where((String uid) =>
                              store.state.auth.users[uid] == null)
                          .map((String uid) => GetUser(uid)),
                    ])
                .onErrorReturnWith(
                    (dynamic error) => GetAllPlaylists.error(error)));
  }

  Stream<AppAction> _getMyPlaylists(
      Stream<GetMyPlaylists$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetMyPlaylists$ action) => Stream<GetMyPlaylists$>.value(
                action)
            .asyncMap((GetMyPlaylists$ action) => _api.getMyPlaylists(
                  store.state.auth.user.uid,
                ))
            .expand((List<Playlist> playlists) => <AppAction>[
                  GetMyPlaylists.successful(playlists),
                  ...playlists
                      .map((Playlist playlist) => playlist.uid)
                      .toSet()
                      .where(
                          (String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .onErrorReturnWith((dynamic error) => GetMyPlaylists.error(error)));
  }

  Stream<AppAction> _getSchoolPlaylists(
      Stream<GetSchoolPlaylists$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetSchoolPlaylists$ action) =>
            Stream<GetSchoolPlaylists$>.value(action)
                .asyncMap(
                    (GetSchoolPlaylists$ action) => _api.getSchoolPlaylists())
                .expand((List<Playlist> playlists) => <AppAction>[
                      GetSchoolPlaylists.successful(playlists),
                      ...playlists
                          .map((Playlist playlist) => playlist.uid)
                          .toSet()
                          .where((String uid) =>
                              store.state.auth.users[uid] == null)
                          .map((String uid) => GetUser(uid)),
                    ])
                .onErrorReturnWith(
                    (dynamic error) => GetSchoolPlaylists.error(error)));
  }

  Stream<AppAction> _getOtherPlaylists(
      Stream<GetOtherPlaylists$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetOtherPlaylists$ action) =>
            Stream<GetOtherPlaylists$>.value(action)
                .asyncMap(
                    (GetOtherPlaylists$ action) => _api.getOtherPlaylists())
                .expand((List<Playlist> playlists) => <AppAction>[
                      GetMyPlaylists.successful(playlists),
                      ...playlists
                          .map((Playlist playlist) => playlist.uid)
                          .toSet()
                          .where((String uid) =>
                              store.state.auth.users[uid] == null)
                          .map((String uid) => GetUser(uid)),
                    ])
                .onErrorReturnWith(
                    (dynamic error) => GetMyPlaylists.error(error)));
  }
}
