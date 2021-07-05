part of inquiries_action;

@freezed
abstract class ReadInquiries with _$ReadInquiries implements AppAction {
  const factory ReadInquiries(List<String> inquiries) = ReadInquiries$;

  const factory ReadInquiries.successful() = ReadInquiriesSuccessful;

  @Implements(ErrorAction)
  const factory ReadInquiries.error(Object error) = ReadInquiriesError;
}
