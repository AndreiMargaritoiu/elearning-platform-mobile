part of playlists_action;

@freezed
abstract class UpdatePlaylist with _$UpdatePlaylist implements AppAction {
  const factory UpdatePlaylist(String id, {List<String> newVideos}) =
      UpdatePlaylist$;

  const factory UpdatePlaylist.successful(Playlist playlist) =
      UpdatePlaylistSuccessful;

  @Implements(ErrorAction)
  const factory UpdatePlaylist.error(Object error) = UpdatePlaylistError;
}
