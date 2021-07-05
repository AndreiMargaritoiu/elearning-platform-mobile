part of videos_models;

abstract class VideoInfo implements Built<VideoInfo, VideoInfoBuilder> {
  factory VideoInfo([void Function(VideoInfoBuilder b) updates]) = _$VideoInfo;

  factory VideoInfo.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  VideoInfo._();

  @nullable
  String get videoPath;

  @nullable
  String get thumbnailPath;

  @nullable
  String get title;

  @nullable
  String get description;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<VideoInfo> get serializer => _$videoInfoSerializer;
}
