part of videos_action;

@freezed
abstract class GetVideos with _$GetVideos implements AppAction {
  const factory GetVideos({
    String userId,
    String playlistId,
    bool trending,
    bool followers,
  }) = GetVideos$;

  const factory GetVideos.successful(List<Video> videos) =
  GetVideosSuccessful;

  @Implements(ErrorAction)
  const factory GetVideos.error(Object error) = GetVideosError;
}
