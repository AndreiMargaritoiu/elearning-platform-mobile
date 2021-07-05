part of videos_action;

@freezed
abstract class GetVideoById with _$GetVideoById implements AppAction {
  const factory GetVideoById(String id) = GetVideoById$;

  const factory GetVideoById.successful(Video videos) = GetVideoByIdSuccessful;

  @Implements(ErrorAction)
  const factory GetVideoById.error(Object error) = GetVideoByIdError;
}
