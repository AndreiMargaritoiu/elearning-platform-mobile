import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/auth_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, SignUp$>(_signUp),
      TypedEpic<AppState, SignOut$>(_signOut),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return  actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
        .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
        .map((AppUser user) => Login.successful(user))
        .onErrorReturnWith((dynamic error) => Login.error(error))
        .doOnData(action.response));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => Stream<SignUp$>.value(action)
        .asyncMap((SignUp$ action) => _api.signUp(
      email: store.state.auth.info.email,
      password: store.state.auth.info.password,
      username: store.state.auth.info.username ?? store.state.auth.info.email.split('@').first,
    ))
        .map((AppUser user) => SignUp.successful(user))
        .onErrorReturnWith((dynamic error) => SignUp.error(error))
        .doOnData(action.response));
  }

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
        .asyncMap((SignOut$ action) => _api.signOut())
        .mapTo(const SignOut.successful())
        .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
        .asyncMap((ResetPassword$ action) => _api.resetPassword(action.email))
        .mapTo(const ResetPassword.successful())
        .onErrorReturnWith((dynamic error) => ResetPassword.error(error)));
  }
}