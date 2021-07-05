part of videos_action;

@freezed
abstract class SearchVideos with _$SearchVideos implements AppAction {
  const factory SearchVideos(String query) = SearchVideos$;

  const factory SearchVideos.successful(List<Video> videos) =
      SearchVideosSuccessful;

  @Implements(ErrorAction)
  const factory SearchVideos.error(Object error) = SearchVideosError;
}
