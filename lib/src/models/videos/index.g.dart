// GENERATED CODE - DO NOT MODIFY BY HAND

part of videos_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosState> _$videosStateSerializer = new _$VideosStateSerializer();
Serializer<VideoInfo> _$videoInfoSerializer = new _$VideoInfoSerializer();
Serializer<Video> _$videoSerializer = new _$VideoSerializer();

class _$VideosStateSerializer implements StructuredSerializer<VideosState> {
  @override
  final Iterable<Type> types = const [VideosState, _$VideosState];
  @override
  final String wireName = 'VideosState';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(VideoInfo)),
      'videos',
      serializers.serialize(object.videos,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Video)])),
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Video)])),
    ];

    return result;
  }

  @override
  VideosState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(VideoInfo)) as VideoInfo);
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Video)]))
              as BuiltList<Object>);
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Video)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$VideoInfoSerializer implements StructuredSerializer<VideoInfo> {
  @override
  final Iterable<Type> types = const [VideoInfo, _$VideoInfo];
  @override
  final String wireName = 'VideoInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, VideoInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.videoPath != null) {
      result
        ..add('videoPath')
        ..add(serializers.serialize(object.videoPath,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnailPath != null) {
      result
        ..add('thumbnailPath')
        ..add(serializers.serialize(object.thumbnailPath,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VideoInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'videoPath':
          result.videoPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnailPath':
          result.thumbnailPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VideoSerializer implements StructuredSerializer<Video> {
  @override
  final Iterable<Type> types = const [Video, _$Video];
  @override
  final String wireName = 'Video';

  @override
  Iterable<Object> serialize(Serializers serializers, Video object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'videoUrl',
      serializers.serialize(object.videoUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'searchIndex',
      serializers.serialize(object.searchIndex,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnailUrl != null) {
      result
        ..add('thumbnailUrl')
        ..add(serializers.serialize(object.thumbnailUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Video deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoUrl':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnailUrl':
          result.thumbnailUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'searchIndex':
          result.searchIndex.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$VideosState extends VideosState {
  @override
  final VideoInfo info;
  @override
  final BuiltList<Video> videos;
  @override
  final BuiltList<Video> searchResult;

  factory _$VideosState([void Function(VideosStateBuilder) updates]) =>
      (new VideosStateBuilder()..update(updates)).build();

  _$VideosState._({this.info, this.videos, this.searchResult}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('VideosState', 'info');
    }
    if (videos == null) {
      throw new BuiltValueNullFieldError('VideosState', 'videos');
    }
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('VideosState', 'searchResult');
    }
  }

  @override
  VideosState rebuild(void Function(VideosStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosStateBuilder toBuilder() => new VideosStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosState &&
        info == other.info &&
        videos == other.videos &&
        searchResult == other.searchResult;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, info.hashCode), videos.hashCode), searchResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosState')
          ..add('info', info)
          ..add('videos', videos)
          ..add('searchResult', searchResult))
        .toString();
  }
}

class VideosStateBuilder implements Builder<VideosState, VideosStateBuilder> {
  _$VideosState _$v;

  VideoInfoBuilder _info;
  VideoInfoBuilder get info => _$this._info ??= new VideoInfoBuilder();
  set info(VideoInfoBuilder info) => _$this._info = info;

  ListBuilder<Video> _videos;
  ListBuilder<Video> get videos => _$this._videos ??= new ListBuilder<Video>();
  set videos(ListBuilder<Video> videos) => _$this._videos = videos;

  ListBuilder<Video> _searchResult;
  ListBuilder<Video> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Video>();
  set searchResult(ListBuilder<Video> searchResult) =>
      _$this._searchResult = searchResult;

  VideosStateBuilder();

  VideosStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _videos = _$v.videos?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideosState;
  }

  @override
  void update(void Function(VideosStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosState build() {
    _$VideosState _$result;
    try {
      _$result = _$v ??
          new _$VideosState._(
              info: info.build(),
              videos: videos.build(),
              searchResult: searchResult.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
        _$failedField = 'videos';
        videos.build();
        _$failedField = 'searchResult';
        searchResult.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VideosState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VideoInfo extends VideoInfo {
  @override
  final String videoPath;
  @override
  final String thumbnailPath;
  @override
  final String title;
  @override
  final String description;

  factory _$VideoInfo([void Function(VideoInfoBuilder) updates]) =>
      (new VideoInfoBuilder()..update(updates)).build();

  _$VideoInfo._(
      {this.videoPath, this.thumbnailPath, this.title, this.description})
      : super._();

  @override
  VideoInfo rebuild(void Function(VideoInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoInfoBuilder toBuilder() => new VideoInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoInfo &&
        videoPath == other.videoPath &&
        thumbnailPath == other.thumbnailPath &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, videoPath.hashCode), thumbnailPath.hashCode),
            title.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoInfo')
          ..add('videoPath', videoPath)
          ..add('thumbnailPath', thumbnailPath)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class VideoInfoBuilder implements Builder<VideoInfo, VideoInfoBuilder> {
  _$VideoInfo _$v;

  String _videoPath;
  String get videoPath => _$this._videoPath;
  set videoPath(String videoPath) => _$this._videoPath = videoPath;

  String _thumbnailPath;
  String get thumbnailPath => _$this._thumbnailPath;
  set thumbnailPath(String thumbnailPath) =>
      _$this._thumbnailPath = thumbnailPath;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  VideoInfoBuilder();

  VideoInfoBuilder get _$this {
    if (_$v != null) {
      _videoPath = _$v.videoPath;
      _thumbnailPath = _$v.thumbnailPath;
      _title = _$v.title;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideoInfo;
  }

  @override
  void update(void Function(VideoInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideoInfo build() {
    final _$result = _$v ??
        new _$VideoInfo._(
            videoPath: videoPath,
            thumbnailPath: thumbnailPath,
            title: title,
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$Video extends Video {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String videoUrl;
  @override
  final String title;
  @override
  final int createdAt;
  @override
  final String description;
  @override
  final String thumbnailUrl;
  @override
  final BuiltList<String> searchIndex;

  factory _$Video([void Function(VideoBuilder) updates]) =>
      (new VideoBuilder()..update(updates)).build();

  _$Video._(
      {this.id,
      this.uid,
      this.videoUrl,
      this.title,
      this.createdAt,
      this.description,
      this.thumbnailUrl,
      this.searchIndex})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Video', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Video', 'uid');
    }
    if (videoUrl == null) {
      throw new BuiltValueNullFieldError('Video', 'videoUrl');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Video', 'title');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Video', 'createdAt');
    }
    if (searchIndex == null) {
      throw new BuiltValueNullFieldError('Video', 'searchIndex');
    }
  }

  @override
  Video rebuild(void Function(VideoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoBuilder toBuilder() => new VideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Video &&
        id == other.id &&
        uid == other.uid &&
        videoUrl == other.videoUrl &&
        title == other.title &&
        createdAt == other.createdAt &&
        description == other.description &&
        thumbnailUrl == other.thumbnailUrl &&
        searchIndex == other.searchIndex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), uid.hashCode),
                            videoUrl.hashCode),
                        title.hashCode),
                    createdAt.hashCode),
                description.hashCode),
            thumbnailUrl.hashCode),
        searchIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Video')
          ..add('id', id)
          ..add('uid', uid)
          ..add('videoUrl', videoUrl)
          ..add('title', title)
          ..add('createdAt', createdAt)
          ..add('description', description)
          ..add('thumbnailUrl', thumbnailUrl)
          ..add('searchIndex', searchIndex))
        .toString();
  }
}

class VideoBuilder implements Builder<Video, VideoBuilder> {
  _$Video _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _videoUrl;
  String get videoUrl => _$this._videoUrl;
  set videoUrl(String videoUrl) => _$this._videoUrl = videoUrl;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _thumbnailUrl;
  String get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  ListBuilder<String> _searchIndex;
  ListBuilder<String> get searchIndex =>
      _$this._searchIndex ??= new ListBuilder<String>();
  set searchIndex(ListBuilder<String> searchIndex) =>
      _$this._searchIndex = searchIndex;

  VideoBuilder();

  VideoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _videoUrl = _$v.videoUrl;
      _title = _$v.title;
      _createdAt = _$v.createdAt;
      _description = _$v.description;
      _thumbnailUrl = _$v.thumbnailUrl;
      _searchIndex = _$v.searchIndex?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Video other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Video;
  }

  @override
  void update(void Function(VideoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Video build() {
    _$Video _$result;
    try {
      _$result = _$v ??
          new _$Video._(
              id: id,
              uid: uid,
              videoUrl: videoUrl,
              title: title,
              createdAt: createdAt,
              description: description,
              thumbnailUrl: thumbnailUrl,
              searchIndex: searchIndex.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchIndex';
        searchIndex.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Video', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
