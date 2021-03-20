part of mentoring_action;

@freezed
abstract class AddMentorship with _$AddMentorship implements AppAction {
  const factory AddMentorship() = AddMentorship$;

  const factory AddMentorship.successful(Mentorship mentorship) =
  AddMentorshipSuccessful;

  @Implements(ErrorAction)
  const factory AddMentorship.error(Object error) = AddMentorshipError;
}