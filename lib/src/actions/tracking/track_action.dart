part of tracking_action;

@freezed
abstract class TrackAction with _$TrackAction implements AppAction {
  const factory TrackAction() = TrackAction$;

  const factory TrackAction.successful() = TrackActionSuccessful;

  @Implements(ErrorAction)
  const factory TrackAction.error(Object error) = TrackActionError;
}
