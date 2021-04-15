part of mentoring_action;

@freezed
abstract class GetCategoryMentorships
    with _$GetCategoryMentorships
    implements AppAction {
  const factory GetCategoryMentorships({String category}) =
      GetCategoryMentorships$;

  const factory GetCategoryMentorships.successful(
      List<Mentorship> mentorships) = GetCategoryMentorshipsSuccessful;

  @Implements(ErrorAction)
  const factory GetCategoryMentorships.error(Object error) =
      GetCategoryMentorshipsError;
}
