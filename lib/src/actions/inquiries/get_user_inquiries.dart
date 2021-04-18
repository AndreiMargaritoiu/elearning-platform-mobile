part of inquiries_action;

@freezed
abstract class GetUserInquiries with _$GetUserInquiries implements AppAction {
  const factory GetUserInquiries() = GetUserInquiries$;

  const factory GetUserInquiries.successful(List<Inquiry> inquiries) =
  GetUserInquiriesSuccessful;

  @Implements(ErrorAction)
  const factory GetUserInquiries.error(Object error) = GetUserInquiriesError;
}