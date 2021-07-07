part of videos_action;

@freezed
abstract class DeleteVideo with _$DeleteVideo implements AppAction {
  const factory DeleteVideo(String id) = DeleteVideo$;

  const factory DeleteVideo.successful(String id) = DeleteVideoSuccessful;

  @Implements(ErrorAction)
  const factory DeleteVideo.error(Object error) = DeleteVideoError;
}
