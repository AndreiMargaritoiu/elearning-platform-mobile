part of videos_models;

abstract class Video implements Built<Video, VideoBuilder> {
  factory Video([void Function(VideoBuilder b) updates]) = _$Video;

  factory Video.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  Video._();

  String get id;

  String get uid;

  String get videoUrl;

  String get title;

  int get createdAt;

  @nullable
  String get description;

  @nullable
  String get thumbnailUrl;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Video> get serializer => _$videoSerializer;
}
