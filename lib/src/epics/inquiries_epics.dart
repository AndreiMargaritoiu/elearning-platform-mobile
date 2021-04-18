import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/inquiries_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class InquiriesEpics {
  const InquiriesEpics({@required InquiriesApi api})
      : assert(api != null),
        _api = api;

  final InquiriesApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, SendInquiry$>(_sendInquiry),
        TypedEpic<AppState, GetUserInquiries$>(_getUserInquiries),
      ],
    );
  }

  Stream<AppAction> _sendInquiry(
      Stream<SendInquiry$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (SendInquiry$ action) => Stream<SendInquiry$>.value(action)
          .asyncMap(
            (SendInquiry$ action) =>
                _api.sendInquiry(action.mentorId, store.state.auth.user.email),
          )
          .mapTo(
            const SendInquiry.successful(),
          )
          .onErrorReturnWith(
            (dynamic error) => SendInquiry.error(error),
          ),
    );
  }

  Stream<AppAction> _getUserInquiries(
      Stream<GetUserInquiries$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetUserInquiries$ action) => Stream<GetUserInquiries$>.value(action)
          .asyncMap(
            (GetUserInquiries$ action) => _api.getUserInquiries(
              store.state.auth.user.uid,
            ),
          )
          .expand(
            (List<Inquiry> inquiries) => <AppAction>[
              GetUserInquiries.successful(inquiries),
              ...inquiries
                  .map((Inquiry inquiry) => inquiry.mentorId)
                  .toSet()
                  .where((String uid) => store.state.auth.users[uid] == null)
                  .map(
                    (String uid) => GetUser(uid),
                  ),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetUserInquiries.error(error),
          ),
    );
  }
}
