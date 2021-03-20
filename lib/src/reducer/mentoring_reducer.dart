import 'package:built_collection/built_collection.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:redux/redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';

Reducer<MentorshipsState> mentoringReducer =
    combineReducers(<Reducer<MentorshipsState>>[
  TypedReducer<MentorshipsState, UpdateMentorshipInfo>(_updateMentorshipInfo),
  TypedReducer<MentorshipsState, AddMentorshipSuccessful>(
      _addMentorshipSuccessful),
  TypedReducer<MentorshipsState, GetAllMentorshipsSuccessful>(
      _getAllMentorshipsSuccessful),
]);

MentorshipsState _updateMentorshipInfo(
    MentorshipsState state, UpdateMentorshipInfo action) {
  return state.rebuild((MentorshipsStateBuilder b) {
    if (action.addMentee != null) {
      b.info.menteeIds.add(action.addMentee);
    } else if (action.removeMentee != null) {
      b.info.menteeIds.remove(action.removeMentee);
    } else if (action.description != null) {
      b.info.description = action.description;
    } else if (action.price != null) {
      b.info.price = action.price;
    } else {
      b.info = MentorshipInfo().toBuilder();
    }
  });
}

MentorshipsState _addMentorshipSuccessful(
    MentorshipsState state, AddMentorshipSuccessful action) {
  return state.rebuild((MentorshipsStateBuilder b) {
    b.info = MentorshipInfo().toBuilder();
  });
}

MentorshipsState _getAllMentorshipsSuccessful(
    MentorshipsState state, GetAllMentorshipsSuccessful action) {
  return state.rebuild((MentorshipsStateBuilder b) {
    b.mentorships = ListBuilder<Mentorship>(action.mentorships);
  });
}
