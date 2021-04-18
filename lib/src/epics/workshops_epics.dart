import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/workshops_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class WorkshopsEpics {
  const WorkshopsEpics({@required WorkshopsApi api})
      : assert(api != null),
        _api = api;

  final WorkshopsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, GetAllWorkshops$>(_getAllWorkshops),
      ],
    );
  }

  Stream<AppAction> _getAllWorkshops(
      Stream<GetAllWorkshops$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetAllWorkshops$ action) => Stream<GetAllWorkshops$>.value(action)
          .asyncMap(
            (GetAllWorkshops$ action) => _api.getAllWorkshops(),
          )
          .expand(
            (List<Workshop> workshops) => <AppAction>[
              GetAllWorkshops.successful(workshops),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetAllWorkshops.error(error),
          ),
    );
  }
}
