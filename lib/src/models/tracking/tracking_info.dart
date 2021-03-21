part of tracking_models;

abstract class TrackingInfo implements Built<TrackingInfo, TrackingInfoBuilder> {
  factory TrackingInfo([void Function(TrackingInfoBuilder b) updates]) = _$TrackingInfo;

  factory TrackingInfo.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  TrackingInfo._();

  @nullable
  String get vid;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<TrackingInfo> get serializer =>
      _$trackingInfoSerializer;
}