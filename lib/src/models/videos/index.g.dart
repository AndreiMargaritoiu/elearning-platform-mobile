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
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
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
        case 'path':
          result.path = serializers.deserialize(value,
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
      'video',
      serializers.serialize(object.video,
          specifiedType: const FullType(String)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(int)));
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
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

  factory _$VideosState([void Function(VideosStateBuilder) updates]) =>
      (new VideosStateBuilder()..update(updates)).build();

  _$VideosState._({this.info, this.videos}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('VideosState', 'info');
    }
    if (videos == null) {
      throw new BuiltValueNullFieldError('VideosState', 'videos');
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
    return other is VideosState && info == other.info && videos == other.videos;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, info.hashCode), videos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosState')
          ..add('info', info)
          ..add('videos', videos))
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

  VideosStateBuilder();

  VideosStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _videos = _$v.videos?.toBuilder();
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
          new _$VideosState._(info: info.build(), videos: videos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
        _$failedField = 'videos';
        videos.build();
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
  final String path;
  @override
  final String description;

  factory _$VideoInfo([void Function(VideoInfoBuilder) updates]) =>
      (new VideoInfoBuilder()..update(updates)).build();

  _$VideoInfo._({this.path, this.description}) : super._();

  @override
  VideoInfo rebuild(void Function(VideoInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoInfoBuilder toBuilder() => new VideoInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoInfo &&
        path == other.path &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, path.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoInfo')
          ..add('path', path)
          ..add('description', description))
        .toString();
  }
}

class VideoInfoBuilder implements Builder<VideoInfo, VideoInfoBuilder> {
  _$VideoInfo _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  VideoInfoBuilder();

  VideoInfoBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
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
    final _$result =
        _$v ?? new _$VideoInfo._(path: path, description: description);
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
  final String video;
  @override
  final String description;
  @override
  final int createdAt;

  factory _$Video([void Function(VideoBuilder) updates]) =>
      (new VideoBuilder()..update(updates)).build();

  _$Video._({this.id, this.uid, this.video, this.description, this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Video', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Video', 'uid');
    }
    if (video == null) {
      throw new BuiltValueNullFieldError('Video', 'video');
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
        video == other.video &&
        description == other.description &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), uid.hashCode), video.hashCode),
            description.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Video')
          ..add('id', id)
          ..add('uid', uid)
          ..add('video', video)
          ..add('description', description)
          ..add('createdAt', createdAt))
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

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  VideoBuilder();

  VideoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _video = _$v.video;
      _description = _$v.description;
      _createdAt = _$v.createdAt;
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
    final _$result = _$v ??
        new _$Video._(
            id: id,
            uid: uid,
            video: video,
            description: description,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
