part of mentoring_action;

@freezed
abstract class DeleteMentorship with _$DeleteMentorship implements AppAction {
  const factory DeleteMentorship({@required String id}) = DeleteMentorship$;

  const factory DeleteMentorship.successful() =
  DeleteMentorshipSuccessful;

  @Implements(ErrorAction)
  const factory DeleteMentorship.error(Object error) = DeleteMentorshipError;
}
