part of mentoring_models;

abstract class MentorshipsState
    implements Built<MentorshipsState, MentorshipsStateBuilder> {
  factory MentorshipsState([void Function(MentorshipsStateBuilder b) updates]) =
      _$MentorshipsState;

  factory MentorshipsState.initialState() {
    return _$MentorshipsState();
  }

  factory MentorshipsState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  MentorshipsState._();

  MentorshipInfo get info;

  BuiltList<Mentorship> get mentorships;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<MentorshipsState> get serializer =>
      _$mentorshipsStateSerializer;
}
