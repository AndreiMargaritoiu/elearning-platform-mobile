part of mentoring_action;

@freezed
abstract class GetAllMentorships with _$GetAllMentorships implements AppAction {
  const factory GetAllMentorships() = GetAllMentorships$;

  const factory GetAllMentorships.successful(List<Mentorship> mentorships) =
      GetAllMentorshipsSuccessful;

  @Implements(ErrorAction)
  const factory GetAllMentorships.error(Object error) = GetAllMentorshipsError;
}
