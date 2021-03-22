part of playlists_action;

@freezed
abstract class UpdatePlaylistInfo with _$UpdatePlaylistInfo implements AppAction {
  const factory UpdatePlaylistInfo({
    String addVideoRef,
    String removeVideoRef,
    String addThumbnail,
    String removeThumbnail,
    String description,
    String title,
    String category,
  }) = UpdatePlaylistInfo$;
}
