

part of videos_action;

@freezed
abstract class UpdateVideoInfo with _$UpdateVideoInfo implements AppAction {
  const factory UpdateVideoInfo({
    String addVideo,
    String removeVideo,
    String description,
  }) = UpdateVideoInfo$;
}
