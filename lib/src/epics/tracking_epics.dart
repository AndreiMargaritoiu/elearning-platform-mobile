import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/tracking_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class TrackingEpics {
  const TrackingEpics({@required TrackingApi api})
      : assert(api != null),
        _api = api;

  final TrackingApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, TrackAction$>(_trackAction),
      ],
    );
  }

  Stream<AppAction> _trackAction(
      Stream<TrackAction$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (TrackAction$ action) => Stream<TrackAction$>.value(action)
          .asyncMap(
            (TrackAction$ action) => _api.trackAction(
                store.state.trackedItems.info, store.state.auth.user.uid),
          )
          .mapTo(
            const TrackAction.successful(),
          )
          .onErrorReturnWith(
            (dynamic error) => TrackAction.error(error),
          ),
    );
  }
}
