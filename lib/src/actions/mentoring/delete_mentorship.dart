part of mentoring_action;

@freezed
abstract class DeleteMentorship with _$DeleteMentorship implements AppAction {
  const factory DeleteMentorship(String id) = DeleteMentorship$;

  const factory DeleteMentorship.successful(String id) = DeleteMentorshipSuccessful;

  @Implements(ErrorAction)
  const factory DeleteMentorship.error(Object error) = DeleteMentorshipError;
}
