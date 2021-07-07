import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';

Reducer<MentorshipsState> mentoringReducer = combineReducers(
  <Reducer<MentorshipsState>>[
    TypedReducer<MentorshipsState, UpdateMentorshipInfo>(_updateMentorshipInfo),
    TypedReducer<MentorshipsState, AddMentorshipSuccessful>(
        _addMentorshipSuccessful),
    TypedReducer<MentorshipsState, UpdateMentorshipSuccessful>(
        _updateMentorshipSuccessful),
    TypedReducer<MentorshipsState, GetMentorshipsSuccessful>(
        _getMentorshipsSuccessful),
    TypedReducer<MentorshipsState, DeleteMentorshipSuccessful>(
        _deleteMentorshipSuccessful),
  ],
);

MentorshipsState _updateMentorshipInfo(
    MentorshipsState state, UpdateMentorshipInfo action) {
  return state.rebuild(
    (MentorshipsStateBuilder b) {
      if (action.description != null) {
        b.info.description = action.description;
      } else if (action.price != null) {
        b.info.price = action.price;
      } else if (action.category != null) {
        b.info.category = action.category;
      } else {
        b.info = MentorshipInfo().toBuilder();
      }
    },
  );
}

MentorshipsState _addMentorshipSuccessful(
    MentorshipsState state, AddMentorshipSuccessful action) {
  return state.rebuild(
    (MentorshipsStateBuilder b) {
      b.info = MentorshipInfo().toBuilder();
    },
  );
}

MentorshipsState _getMentorshipsSuccessful(
    MentorshipsState state, GetMentorshipsSuccessful action) {
  return state.rebuild(
    (MentorshipsStateBuilder b) {
      b.mentorships = ListBuilder<Mentorship>(action.mentorships);
    },
  );
}

MentorshipsState _updateMentorshipSuccessful(
    MentorshipsState state, UpdateMentorshipSuccessful action) {
  return state.rebuild(
    (MentorshipsStateBuilder b) {
      b.mentorships.removeWhere(
          (Mentorship mentorship) => mentorship.id == action.mentorship.id);
      b.mentorships.insert(0, action.mentorship);
    },
  );
}

MentorshipsState _deleteMentorshipSuccessful(
    MentorshipsState state, DeleteMentorshipSuccessful action) {
  return state.rebuild(
    (MentorshipsStateBuilder b) {
      b.mentorships
          .removeWhere((Mentorship mentorship) => mentorship.id == action.id);
    },
  );
}
