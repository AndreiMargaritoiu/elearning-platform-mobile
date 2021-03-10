import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/video_api.dart';
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
      TypedEpic<AppState, AddVideo$>(_createVideo),
    ]);
  }

  Stream<AppAction> _createVideo(
      Stream<AddVideo$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddVideo$ action) => Stream<AddVideo$>.value(action)
            .asyncMap((AddVideo$ action) => _api.createVideo(
                store.state.videos.info, store.state.auth.user.uid))
            .map((Video Video) => AddVideo.successful(Video))
            .onErrorReturnWith((dynamic error) => AddVideo.error(error)));
  }
}
