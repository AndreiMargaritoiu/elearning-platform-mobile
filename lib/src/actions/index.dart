export 'auth/index.dart';
export 'videos/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction {
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(AppAction action);