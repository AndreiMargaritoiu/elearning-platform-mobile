part of playlists_action;

@freezed
abstract class GetOtherPlaylists with _$GetOtherPlaylists implements AppAction {
  const factory GetOtherPlaylists() = GetOtherPlaylists$;

  const factory GetOtherPlaylists.successful(List<Playlist> playlists) =
  GetOtherPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory GetOtherPlaylists.error(Object error) = GetOtherPlaylistsError;
}