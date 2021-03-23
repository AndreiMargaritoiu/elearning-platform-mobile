part of videos_action;

@freezed
abstract class GetVideosByPlaylistId
    with _$GetVideosByPlaylistId
    implements AppAction {
  const factory GetVideosByPlaylistId(String playlistId) =
      GetVideosByPlaylistId$;

  const factory GetVideosByPlaylistId.successful(List<Video> videos) =
      GetVideosByPlaylistIdSuccessful;

  @Implements(ErrorAction)
  const factory GetVideosByPlaylistId.error(Object error) =
      GetVideosByPlaylistIdError;
}
