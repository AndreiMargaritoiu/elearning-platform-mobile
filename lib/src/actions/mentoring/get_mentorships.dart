part of mentoring_action;

@freezed
abstract class GetMentorships with _$GetMentorships implements AppAction {
  const factory GetMentorships({
    String userId,
    List<String> category,
  }) = GetMentorships$;

  const factory GetMentorships.successful(List<Mentorship> mentorships) =
  GetMentorshipsSuccessful;

  @Implements(ErrorAction)
  const factory GetMentorships.error(Object error) = GetMentorshipsError;
}
