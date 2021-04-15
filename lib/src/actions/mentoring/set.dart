part of mentoring_action;

@freezed
abstract class UpdateMentorshipInfo
    with _$UpdateMentorshipInfo
    implements AppAction {
  const factory UpdateMentorshipInfo({
    String description,
    String category,
    int price,
  }) = UpdateMentorshipInfo$;
}
