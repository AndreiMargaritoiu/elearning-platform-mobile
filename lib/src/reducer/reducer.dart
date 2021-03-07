import 'package:elearning_platform_mobile/src/actions/auth/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((b) {});
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return AppState.initialState();
}