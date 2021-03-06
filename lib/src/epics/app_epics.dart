import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics();

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[]);
  }
}