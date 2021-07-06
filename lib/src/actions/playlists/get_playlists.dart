part of playlists_action;

@freezed
abstract class GetPlaylists with _$GetPlaylists implements AppAction {
  const factory GetPlaylists({
    String userId,
    String category,
  }) = GetPlaylists$;

  const factory GetPlaylists.successful(List<Playlist> playlists) =
  GetPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory GetPlaylists.error(Object error) = GetPlaylistsError;
}
