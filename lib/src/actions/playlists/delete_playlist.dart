part of playlists_action;

@freezed
abstract class DeletePlaylist with _$DeletePlaylist implements AppAction {
  const factory DeletePlaylist({@required String id}) = DeletePlaylist$;

  const factory DeletePlaylist.successful() =
  DeletePlaylistSuccessful;

  @Implements(ErrorAction)
  const factory DeletePlaylist.error(Object error) = DeletePlaylistError;
}
