import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/mentoring_api.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class MentoringEpics {
  const MentoringEpics({@required MentoringApi api})
      : assert(api != null),
        _api = api;

  final MentoringApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, AddMentorship$>(_addMentorship),
        TypedEpic<AppState, GetMentorships$>(_getMentorships),
        TypedEpic<AppState, GetMentorshipById$>(_getMentorshipById),
        TypedEpic<AppState, UpdateMentorship$>(_updateMentorship),
        TypedEpic<AppState, DeleteMentorship$>(_deleteMentorship),
      ],
    );
  }

  Stream<AppAction> _addMentorship(
      Stream<AddMentorship$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (AddMentorship$ action) => Stream<AddMentorship$>.value(action)
          .asyncMap(
            (AddMentorship$ action) =>
                _api.addMentorship(store.state.mentorships.info),
          )
          .map(
            (Mentorship mentorship) => AddMentorship.successful(mentorship),
          )
          .onErrorReturnWith(
            (dynamic error) => AddMentorship.error(error),
          ),
    );
  }

  Stream<AppAction> _getMentorshipById(
      Stream<GetMentorshipById$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetMentorshipById$ action) => Stream<GetMentorshipById$>.value(action)
          .asyncMap(
            (GetMentorshipById$ action) => _api.getMentorshipById(action.id),
          )
          .expand(
            (Mentorship mentorship) => <AppAction>[
              GetMentorshipById.successful(mentorship),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetMentorshipById.error(error),
          ),
    );
  }

  Stream<AppAction> _updateMentorship(
      Stream<UpdateMentorship$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (UpdateMentorship$ action) => Stream<UpdateMentorship$>.value(action)
          .asyncMap(
            (UpdateMentorship$ action) =>
                _api.updateMentorship(store.state.mentorships.info, action.id),
          )
          .map(
            (Mentorship mentorship) => UpdateMentorship.successful(mentorship),
          )
          .onErrorReturnWith(
            (dynamic error) => UpdateMentorship.error(error),
          ),
    );
  }

  Stream<AppAction> _deleteMentorship(
      Stream<DeleteMentorship$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (DeleteMentorship$ action) => Stream<DeleteMentorship$>.value(action)
          .asyncMap(
            (DeleteMentorship$ action) => _api.deleteMentorship(action.id),
          )
          .mapTo(
            const DeleteMentorship.successful(),
          )
          .onErrorReturnWith(
            (dynamic error) => DeleteMentorship.error(error),
          ),
    );
  }

  Stream<AppAction> _getMentorships(
      Stream<GetMentorships$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap(
      (GetMentorships$ action) => Stream<GetMentorships$>.value(action)
          .asyncMap(
            (GetMentorships$ action) => _api.getMentorships(
              category: action.category,
              uid: action.userId == 'me'
                  ? store.state.auth.user.uid
                  : action.userId,
            ),
          )
          .expand(
            (List<Mentorship> mentorships) => <AppAction>[
              GetMentorships.successful(mentorships),
              ...mentorships
                  .map((Mentorship mentorship) => mentorship.mentorId)
                  .toSet()
                  .where((String uid) => store.state.auth.users[uid] == null)
                  .map(
                    (String uid) => GetUser(uid),
                  ),
            ],
          )
          .onErrorReturnWith(
            (dynamic error) => GetMentorships.error(error),
          ),
    );
  }
}
