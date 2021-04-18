export 'auth/index.dart';
export 'inquiries/index.dart';
export 'mentoring/index.dart';
export 'playlists/index.dart';
export 'posts/index.dart';
export 'tracking/index.dart';
export 'videos/index.dart';
export 'workshops/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(AppAction action);
