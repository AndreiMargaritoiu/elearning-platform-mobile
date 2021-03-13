part of videos_action;

@freezed
abstract class ListenForVideos with _$ListenForVideos implements AppAction {
  const factory ListenForVideos() = ListenForVideos$;

  const factory ListenForVideos.successful(List<Video> videos) =
      ListenForVideosSuccessful;

  @Implements(ErrorAction)
  const factory ListenForVideos.error(Object error) = ListenForVideosError;
}
