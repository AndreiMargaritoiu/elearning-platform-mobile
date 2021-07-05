part of tracking_models;

abstract class TrackingsState
    implements Built<TrackingsState, TrackingsStateBuilder> {
  factory TrackingsState([void Function(TrackingsStateBuilder b) updates]) =
      _$TrackingsState;

  factory TrackingsState.initialState() {
    return _$TrackingsState();
  }

  factory TrackingsState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  TrackingsState._();

  TrackingInfo get info;

  BuiltList<Tracking> get trackedItems;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<TrackingsState> get serializer =>
      _$trackingsStateSerializer;
}
