part of playlists_models;

abstract class Playlist implements Built<Playlist, PlaylistBuilder> {
  factory Playlist([void Function(PlaylistBuilder b) updates]) = _$Playlist;

  factory Playlist.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  Playlist._();

  String get id;

  String get uid;

  String get title;

  BuiltList<String> get videoRefs;

  int get createdAt;

  @nullable
  String get description;

  @nullable
  String get category;

  @nullable
  String get thumbnailUrl;

  BuiltList<String> get searchIndex;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Playlist> get serializer => _$playlistSerializer;
}