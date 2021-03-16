export 'auth/index.dart';
export 'playlists/index.dart';
export 'posts/index.dart';
export 'videos/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(AppAction action);
