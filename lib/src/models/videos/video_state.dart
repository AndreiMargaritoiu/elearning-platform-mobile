part of videos_models;

abstract class VideosState implements Built<VideosState, VideosStateBuilder> {
  factory VideosState([void Function(VideosStateBuilder b) updates]) =
      _$VideosState;

  factory VideosState.initialState() {
    return _$VideosState();
  }

  factory VideosState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  VideosState._();

  VideoInfo get info;

  BuiltList<Video> get videos;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<VideosState> get serializer => _$videosStateSerializer;
}
