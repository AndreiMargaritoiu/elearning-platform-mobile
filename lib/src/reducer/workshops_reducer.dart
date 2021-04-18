import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';

Reducer<WorkshopsState> workshopsReducer = combineReducers(
  <Reducer<WorkshopsState>>[
    TypedReducer<WorkshopsState, GetAllWorkshopsSuccessful>(
        _getAllWorkshopsSuccessful),
  ],
);

WorkshopsState _getAllWorkshopsSuccessful(
    WorkshopsState state, GetAllWorkshopsSuccessful action) {
  return state.rebuild(
        (WorkshopsStateBuilder b) {
      b.workshops = ListBuilder<Workshop>(action.workshops);
    },
  );
}

