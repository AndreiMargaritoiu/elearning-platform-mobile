part of tracking_action;

@freezed
abstract class UpdateTrackingInfo
    with _$UpdateTrackingInfo
    implements AppAction {
  const factory UpdateTrackingInfo({
    String vid,
  }) = UpdateTrackingInfo$;
}
