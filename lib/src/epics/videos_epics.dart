import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/videos_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class VideosEpics {
  const VideosEpics({@required VideosApi api})
      : assert(api != null),
        _api = api;

  final VideosApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, AddVideo$>(_addVideo),
      TypedEpic<AppState, ListenForVideos$>(_listenForVideo),
      TypedEpic<AppState, GetMyVideos$>(_getMyVideos),
      TypedEpic<AppState, GetVideoById$>(_getVideoById),
      TypedEpic<AppState, GetVideosByPlaylistId$>(_getVideosByPlaylistId),
      TypedEpic<AppState, UpdateVideo$>(_updateVideo),
      TypedEpic<AppState, DeleteVideo$>(_deleteVideo),
    ]);
  }

  Stream<AppAction> _addVideo(
      Stream<AddVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddVideo$ action) => Stream<AddVideo$>.value(action)
            .asyncMap((AddVideo$ action) => _api.addVideo(
                store.state.videos.info, store.state.auth.user.uid))
            .map((Video video) => AddVideo.successful(video))
            .onErrorReturnWith((dynamic error) => AddVideo.error(error)));
  }

  Stream<AppAction> _getVideoById(
      Stream<GetVideoById$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetVideoById$ action) => Stream<GetVideoById$>.value(action)
            .asyncMap((GetVideoById$ action) => _api.getVideoById(action.id))
            .expand((Video video) => <AppAction>[
                  GetVideoById.successful(video),
                ])
            .onErrorReturnWith((dynamic error) => ListenForPosts.error(error)));
  }

  Stream<AppAction> _updateVideo(
      Stream<UpdateVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateVideo$ action) => Stream<UpdateVideo$>.value(action)
            .asyncMap((UpdateVideo$ action) =>
                _api.updateVideo(store.state.videos.info, action.id))
            .map((Video video) => UpdateVideo.successful(video))
            .onErrorReturnWith((dynamic error) => UpdateVideo.error(error)));
  }

  Stream<AppAction> _deleteVideo(
      Stream<DeleteVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteVideo$ action) => Stream<DeleteVideo$>.value(action)
            .asyncMap((DeleteVideo$ action) => _api.deleteVideo(action.id))
            .mapTo(const DeleteVideo.successful())
            .onErrorReturnWith((dynamic error) => DeleteVideo.error(error)));
  }

  Stream<AppAction> _getMyVideos(
      Stream<GetMyVideos$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetMyVideos$ action) => Stream<GetMyVideos$>.value(action)
            .asyncMap((GetMyVideos$ action) => _api.getMyVideos(
                  store.state.auth.user.uid,
                ))
            .expand((List<Video> videos) => <AppAction>[
                  GetMyVideos.successful(videos),
                  ...videos
                      .map((Video video) => video.uid)
                      .toSet()
                      .where(
                          (String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .onErrorReturnWith((dynamic error) => ListenForPosts.error(error)));
  }

  Stream<AppAction> _getVideosByPlaylistId(
      Stream<GetVideosByPlaylistId$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetVideosByPlaylistId$ action) =>
            Stream<GetVideosByPlaylistId$>.value(action)
                .asyncMap((GetVideosByPlaylistId$ action) =>
                    _api.getVideosByPlaylistId(
                      action.playlistId,
                    ))
                .expand((List<Video> videos) => <AppAction>[
                      GetMyVideos.successful(videos),
                      ...videos
                          .map((Video video) => video.uid)
                          .toSet()
                          .where((String uid) =>
                              store.state.auth.users[uid] == null)
                          .map((String uid) => GetUser(uid)),
                    ])
                .onErrorReturnWith(
                    (dynamic error) => ListenForPosts.error(error)));
  }

  Stream<AppAction> _listenForVideo(
      Stream<ListenForVideos$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ListenForVideos$ action) => Stream<ListenForVideos$>.value(
                action)
            .asyncMap(
                (ListenForVideos$ action) => _api.listenForVideos(<String>[
                      store.state.auth.user.uid,
                      ...store.state.auth.user.following,
                    ]))
            .expand((List<Video> videos) => <AppAction>[
                  ListenForVideos.successful(videos),
                  ...videos
                      .map((Video video) => video.uid)
                      .toSet()
                      .where(
                          (String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .onErrorReturnWith((dynamic error) => ListenForPosts.error(error)));
  }
}
