part of videos_action;

@freezed
abstract class GetVideosByUid with _$GetVideosByUid implements AppAction {
  const factory GetVideosByUid({String id}) = GetVideosByUid$;

  const factory GetVideosByUid.successful(List<Video> videos) =
      GetVideosByUidSuccessful;

  @Implements(ErrorAction)
  const factory GetVideosByUid.error(Object error) = GetVideosByUidError;
}
