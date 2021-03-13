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
