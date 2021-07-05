part of mentoring_models;

abstract class Mentorship implements Built<Mentorship, MentorshipBuilder> {
  factory Mentorship([void Function(MentorshipBuilder b) updates]) =
      _$Mentorship;

  factory Mentorship.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  Mentorship._();

  String get id;

  String get mentorId;

  @nullable
  String get description;

  @nullable
  String get category;

  @nullable
  int get price;

  @nullable
  int get createdAt;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Mentorship> get serializer => _$mentorshipSerializer;
}
