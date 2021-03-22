part of mentoring_action;

@freezed
abstract class UpdateMentorship with _$UpdateMentorship implements AppAction {
  const factory UpdateMentorship(String id) = UpdateMentorship$;

  const factory UpdateMentorship.successful(Mentorship mentorship) =
      UpdateMentorshipSuccessful;

  @Implements(ErrorAction)
  const factory UpdateMentorship.error(Object error) = UpdateMentorshipError;
}
