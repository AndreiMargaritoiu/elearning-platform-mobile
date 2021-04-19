part of workshops_models;

abstract class Workshop implements Built<Workshop, WorkshopBuilder> {
  factory Workshop([void Function(WorkshopBuilder b) updates]) = _$Workshop;

  factory Workshop.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  Workshop._();

  String get id;

  String get description;

  String get tag;

  bool get onlineEvent;

  int get date;

  @nullable
  String get location;

  @nullable
  String get thumbnailUrl;

  @nullable
  BuiltList<String> get participants;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Workshop> get serializer => _$workshopSerializer;
}
