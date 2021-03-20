part of playlists_action;

@freezed
abstract class GetSchoolPlaylists with _$GetSchoolPlaylists implements AppAction {
  const factory GetSchoolPlaylists() = GetSchoolPlaylists$;

  const factory GetSchoolPlaylists.successful(List<Playlist> playlists) =
  GetSchoolPlaylistsSuccessful;

  @Implements(ErrorAction)
  const factory GetSchoolPlaylists.error(Object error) = GetSchoolPlaylistsError;
}
