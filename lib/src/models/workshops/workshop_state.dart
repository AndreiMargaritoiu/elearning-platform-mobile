part of workshops_models;

abstract class WorkshopsState implements Built<WorkshopsState, WorkshopsStateBuilder> {
  factory WorkshopsState([void Function(WorkshopsStateBuilder b) updates]) =
  _$WorkshopsState;

  factory WorkshopsState.initialState() {
    return _$WorkshopsState();
  }

  factory WorkshopsState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  WorkshopsState._();

  BuiltList<Workshop> get workshops;

  BuiltList<Workshop> get searchResult;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<WorkshopsState> get serializer => _$workshopsStateSerializer;
}
