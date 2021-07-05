part of playlists_action;

@freezed
abstract class GetPlaylistsByUid with _$GetPlaylistsByUid implements AppAction {
  const factory GetPlaylistsByUid({String id}) = GetPlaylistsByUid$;

  const factory GetPlaylistsByUid.successful(List<Playlist> playlists) =
      GetPlaylistsByUidSuccessful;

  @Implements(ErrorAction)
  const factory GetPlaylistsByUid.error(Object error) = GetPlaylistsByUidError;
}
