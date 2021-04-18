part of inquiries_models;

abstract class InquiriesState implements Built<InquiriesState, InquiriesStateBuilder> {
  factory InquiriesState([void Function(InquiriesStateBuilder b) updates]) =
  _$InquiriesState;

  factory InquiriesState.initialState() {
    return _$InquiriesState();
  }

  factory InquiriesState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  InquiriesState._();

  BuiltList<Inquiry> get inquiries;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<InquiriesState> get serializer => _$inquiriesStateSerializer;
}