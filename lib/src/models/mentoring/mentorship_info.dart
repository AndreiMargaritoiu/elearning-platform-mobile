part of mentoring_models;

abstract class MentorshipInfo
    implements Built<MentorshipInfo, MentorshipInfoBuilder> {
  factory MentorshipInfo([void Function(MentorshipInfoBuilder b) updates]) =
  _$MentorshipInfo;

  factory MentorshipInfo.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  MentorshipInfo._();

  @nullable
  BuiltList<String> get menteeIds;

  @nullable
  String get mentorEmail;

  @nullable
  String get description;

  @nullable
  int get price;

  @nullable
  int get createdAt;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<MentorshipInfo> get serializer => _$mentorshipInfoSerializer;
}
