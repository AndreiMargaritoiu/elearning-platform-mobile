part of mentoring_models;

abstract class MentorshipInfo
    implements Built<MentorshipInfo, MentorshipInfoBuilder> {
  factory MentorshipInfo([void Function(MentorshipInfoBuilder b) updates]) =
  _$MentorshipInfo;

  factory MentorshipInfo.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  MentorshipInfo._();

  @nullable
  String get description;

  @nullable
  String get category;

  @nullable
  int get price;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<MentorshipInfo> get serializer => _$mentorshipInfoSerializer;
}
