part of tracking_models;

abstract class Tracking implements Built<Tracking, TrackingBuilder> {
  factory Tracking([void Function(TrackingBuilder b) updates]) = _$Tracking;

  factory Tracking.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  Tracking._();

  String get id;

  String get uid;

  @nullable
  String get vid;

  @nullable
  String get pid;

  int get createdAt;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Tracking> get serializer => _$trackingSerializer;
}
