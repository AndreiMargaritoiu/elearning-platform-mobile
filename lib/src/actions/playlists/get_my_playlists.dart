part of playlists_action;

@freezed
abstract class GetMyPlaylists with _$GetMyPlaylists implements AppAction {
  const factory GetMyPlaylists() = GetMyPlaylists$;

  const factory GetMyPlaylists.successful(List<Playlist> playlists) =
  GetMyPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory GetMyPlaylists.error(Object error) = GetMyPlaylistsError;
}
