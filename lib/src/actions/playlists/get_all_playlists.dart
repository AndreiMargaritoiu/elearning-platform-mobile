part of playlists_action;

@freezed
abstract class GetAllPlaylists with _$GetAllPlaylists implements AppAction {
  const factory GetAllPlaylists() = GetAllPlaylists$;

  const factory GetAllPlaylists.successful(List<Playlist> playlists) =
      GetAllPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory GetAllPlaylists.error(Object error) = GetAllPlaylistsError;
}
