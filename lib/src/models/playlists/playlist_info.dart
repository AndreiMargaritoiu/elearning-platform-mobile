part of playlists_models;

abstract class PlaylistInfo
    implements Built<PlaylistInfo, PlaylistInfoBuilder> {
  factory PlaylistInfo([void Function(PlaylistInfoBuilder b) updates]) =
      _$PlaylistInfo;

  factory PlaylistInfo.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  PlaylistInfo._();

  @nullable
  String get title;

  @nullable
  String get description;

  @nullable
  String get category;

  @nullable
  String get thumbnailPath;

  @nullable
  BuiltList<String> get videoRefs;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PlaylistInfo> get serializer => _$playlistInfoSerializer;
}
