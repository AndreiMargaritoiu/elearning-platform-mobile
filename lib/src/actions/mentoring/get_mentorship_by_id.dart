part of mentoring_action;

@freezed
abstract class GetMentorshipById with _$GetMentorshipById implements AppAction {
  const factory GetMentorshipById(String id) = GetMentorshipById$;

  const factory GetMentorshipById.successful(Mentorship mentorship) =
  GetMentorshipByIdSuccessful;

  @Implements(ErrorAction)
  const factory GetMentorshipById.error(Object error) = GetMentorshipByIdError;
}
