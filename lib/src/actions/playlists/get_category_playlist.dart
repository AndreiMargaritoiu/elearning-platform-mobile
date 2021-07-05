part of playlists_action;

@freezed
abstract class GetCategoryPlaylists
    with _$GetCategoryPlaylists
    implements AppAction {
  const factory GetCategoryPlaylists(String category) = GetCategoryPlaylists$;

  const factory GetCategoryPlaylists.successful(List<Playlist> playlists) =
      GetCategoryPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory GetCategoryPlaylists.error(Object error) =
      GetCategoryPlaylistsError;
}
