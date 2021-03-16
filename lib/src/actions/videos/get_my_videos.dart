part of videos_action;

@freezed
abstract class GetMyVideos with _$GetMyVideos implements AppAction {
  const factory GetMyVideos() = GetMyVideos$;

  const factory GetMyVideos.successful(List<Video> videos) =
  GetMyVideosSuccessful;

  @Implements(ErrorAction)
  const factory GetMyVideos.error(Object error) = GetMyVideosError;
}
