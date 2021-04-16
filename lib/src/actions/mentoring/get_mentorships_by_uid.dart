part of mentoring_action;

@freezed
abstract class GetMentorshipByUid
    with _$GetMentorshipByUid
    implements AppAction {
  const factory GetMentorshipByUid({String id}) = GetMentorshipByUid$;

  const factory GetMentorshipByUid.successful(List<Mentorship> mentorships) =
      GetMentorshipByUidSuccessful;

  @Implements(ErrorAction)
  const factory GetMentorshipByUid.error(Object error) =
      GetMentorshipByUidError;
}
