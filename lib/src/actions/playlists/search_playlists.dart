part of playlists_action;

@freezed
abstract class SearchPlaylists with _$SearchPlaylists implements AppAction {
  const factory SearchPlaylists(String query) = SearchPlaylists$;

  const factory SearchPlaylists.successful(List<Playlist> playlists) =
      SearchPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory SearchPlaylists.error(Object error) = SearchPlaylistsError;
}
