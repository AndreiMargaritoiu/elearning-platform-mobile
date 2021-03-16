part of playlists_action;

@freezed
abstract class CreatePlaylist with _$CreatePlaylist implements AppAction {
  const factory CreatePlaylist() = CreatePlaylist$;

  const factory CreatePlaylist.successful(Playlist playlist) =
      CreatePlaylistSuccessful;

  @Implements(ErrorAction)
  const factory CreatePlaylist.error(Object error) = CreatePlaylistError;
}
