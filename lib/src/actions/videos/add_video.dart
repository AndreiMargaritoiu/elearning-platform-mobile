part of videos_action;

@freezed
abstract class AddVideo with _$AddVideo implements AppAction {
  const factory AddVideo() = AddVideo$;

  const factory AddVideo.successful(Video video) = AddVideoSuccessful;

  @Implements(ErrorAction)
  const factory AddVideo.error(Object error) = AddVideoError;
}
