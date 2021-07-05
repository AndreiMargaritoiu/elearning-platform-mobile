part of playlists_action;

@freezed
abstract class GetPlaylistById with _$GetPlaylistById implements AppAction {
  const factory GetPlaylistById(String id) = GetPlaylistById$;

  const factory GetPlaylistById.successful(Playlist playlist) =
      GetPlaylistByIdSuccessful;

  @Implements(ErrorAction)
  const factory GetPlaylistById.error(Object error) = GetPlaylistByIdError;
}
