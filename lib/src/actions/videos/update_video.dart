part of videos_action;

@freezed
abstract class UpdateVideo with _$UpdateVideo implements AppAction {
  const factory UpdateVideo(String id) = UpdateVideo$;

  const factory UpdateVideo.successful(Video video) = UpdateVideoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateVideo.error(Object error) = UpdateVideoError;
}
