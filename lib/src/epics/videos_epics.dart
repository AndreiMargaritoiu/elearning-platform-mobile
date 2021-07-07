import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/videos_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class VideosEpics {
  const VideosEpics({@required VideosApi api})
      : assert(api != null),
        _api = api;

  final VideosApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, AddVideo$>(_addVideo),
        TypedEpic<AppState, GetVideos$>(_getVideos),
        TypedEpic<AppState, GetVideoById$>(_getVideoById),
        TypedEpic<AppState, UpdateVideo$>(_updateVideo),
        TypedEpic<AppState, DeleteVideo$>(_deleteVideo),
        TypedEpic<AppState, SearchVideos$>(_searchVideos),
      ],
    );
  }

  Stream<AppAction> _addVideo(
      Stream<AddVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (AddVideo$ action) => Stream<AddVideo$>.value(action)
          .asyncMap(
            (AddVideo$ action) => _api.addVideo(
                store.state.videos.info, store.state.auth.user.uid),
          )
          .map(
            (Video video) => AddVideo.successful(video),
          )
          .onErrorReturnWith(
            (dynamic error) => AddVideo.error(error),
          ),
    );
  }

  Stream<AppAction> _getVideoById(
      Stream<GetVideoById$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetVideoById$ action) => Stream<GetVideoById$>.value(action)
          .asyncMap(
            (GetVideoById$ action) => _api.getVideoById(action.id),
          )
          .expand(
            (Video video) => <AppAction>[
              GetVideoById.successful(video),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetVideoById.error(error),
          ),
    );
  }

  Stream<AppAction> _updateVideo(
      Stream<UpdateVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (UpdateVideo$ action) => Stream<UpdateVideo$>.value(action)
          .asyncMap(
            (UpdateVideo$ action) =>
                _api.updateVideo(store.state.videos.info, action.id),
          )
          .map(
            (Video video) => UpdateVideo.successful(video),
          )
          .onErrorReturnWith(
            (dynamic error) => UpdateVideo.error(error),
          ),
    );
  }

  Stream<AppAction> _deleteVideo(
      Stream<DeleteVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (DeleteVideo$ action) => Stream<DeleteVideo$>.value(action)
          .asyncMap(
            (DeleteVideo$ action) => _api.deleteVideo(action.id),
          )
          .mapTo(
            DeleteVideo.successful(action.id),
          )
          .onErrorReturnWith(
            (dynamic error) => DeleteVideo.error(error),
          ),
    );
  }

  Stream<AppAction> _getVideos(
      Stream<GetVideos$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetVideos$ action) => Stream<GetVideos$>.value(action)
          .asyncMap(
            (GetVideos$ action) => _api.getVideos(
              playlistId: action.playlistId,
              userId: action.userId == 'me'
                  ? store.state.auth.user.uid
                  : action.userId,
              followers: action.followers,
              trending: action.trending,
            ),
          )
          .expand(
            (List<Video> videos) => <AppAction>[
              GetVideos.successful(videos),
              ...videos
                  .map((Video video) => video.uid)
                  .toSet()
                  .where((String uid) => store.state.auth.users[uid] == null)
                  .map(
                    (String uid) => GetUser(uid),
                  ),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetVideos.error(error),
          ),
    );
  }

  Stream<AppAction> _searchVideos(
      Stream<SearchVideos$> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(
          const Duration(milliseconds: 500),
        )
        .flatMap(
          (SearchVideos$ action) => Stream<SearchVideos$>.value(action)
              .asyncMap(
                (SearchVideos$ action) =>
                    _api.searchVideos(action.query, store.state.auth.user.uid),
              )
              .map(
                (List<Video> videos) => SearchVideos.successful(videos),
              )
              .onErrorReturnWith(
                (dynamic error) => SearchVideos.error(error),
              ),
        );
  }
}
