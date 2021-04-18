part of inquiries_action;

@freezed
abstract class SendInquiry with _$SendInquiry implements AppAction {
  const factory SendInquiry(String mentorId) = SendInquiry$;

  const factory SendInquiry.successful() = SendInquirySuccessful;

  @Implements(ErrorAction)
  const factory SendInquiry.error(Object error) = SendInquiryError;
}
