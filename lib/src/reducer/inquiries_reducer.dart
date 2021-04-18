import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/inquiries/index.dart';

Reducer<InquiriesState> inquiriesReducer = combineReducers(
  <Reducer<InquiriesState>>[
    // TypedReducer<InquiriesState, SendInquirySuccessful>(_sendInquirySuccessful),
    TypedReducer<InquiriesState, GetUserInquiriesSuccessful>(_getUserInquiriesSuccessful),
  ],
);

// InquiriesState _sendInquirySuccessful(InquiriesState state, SendInquirySuccessful action) {
//   return state.rebuild(
//         (InquiriesStateBuilder b) {
//           b.inquiries = ListBuilder<Inquiry>(<Inquiry>[]);
//     },
//   );
// }

InquiriesState _getUserInquiriesSuccessful(
    InquiriesState state, GetUserInquiriesSuccessful action) {
  return state.rebuild(
        (InquiriesStateBuilder b) {
      b.inquiries = ListBuilder<Inquiry>(action.inquiries);
    },
  );
}