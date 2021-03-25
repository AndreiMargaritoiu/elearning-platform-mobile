// GENERATED CODE - DO NOT MODIFY BY HAND

part of playlists_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Playlist> _$playlistSerializer = new _$PlaylistSerializer();
Serializer<PlaylistInfo> _$playlistInfoSerializer =
    new _$PlaylistInfoSerializer();
Serializer<PlaylistsState> _$playlistsStateSerializer =
    new _$PlaylistsStateSerializer();

class _$PlaylistSerializer implements StructuredSerializer<Playlist> {
  @override
  final Iterable<Type> types = const [Playlist, _$Playlist];
  @override
  final String wireName = 'Playlist';

  @override
  Iterable<Object> serialize(Serializers serializers, Playlist object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'videoRefs',
      serializers.serialize(object.videoRefs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
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
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
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
  Playlist deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaylistBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoRefs':
          result.videoRefs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
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

class _$PlaylistInfoSerializer implements StructuredSerializer<PlaylistInfo> {
  @override
  final Iterable<Type> types = const [PlaylistInfo, _$PlaylistInfo];
  @override
  final String wireName = 'PlaylistInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, PlaylistInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnailPath != null) {
      result
        ..add('thumbnailPath')
        ..add(serializers.serialize(object.thumbnailPath,
            specifiedType: const FullType(String)));
    }
    if (object.videoRefs != null) {
      result
        ..add('videoRefs')
        ..add(serializers.serialize(object.videoRefs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  PlaylistInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaylistInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnailPath':
          result.thumbnailPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoRefs':
          result.videoRefs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$PlaylistsStateSerializer
    implements StructuredSerializer<PlaylistsState> {
  @override
  final Iterable<Type> types = const [PlaylistsState, _$PlaylistsState];
  @override
  final String wireName = 'PlaylistsState';

  @override
  Iterable<Object> serialize(Serializers serializers, PlaylistsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(PlaylistInfo)),
      'playlists',
      serializers.serialize(object.playlists,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Playlist)])),
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Playlist)])),
    ];

    return result;
  }

  @override
  PlaylistsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaylistsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(PlaylistInfo)) as PlaylistInfo);
          break;
        case 'playlists':
          result.playlists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Playlist)]))
              as BuiltList<Object>);
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Playlist)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Playlist extends Playlist {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String title;
  @override
  final BuiltList<String> videoRefs;
  @override
  final int createdAt;
  @override
  final String description;
  @override
  final String category;
  @override
  final String thumbnailUrl;
  @override
  final BuiltList<String> searchIndex;

  factory _$Playlist([void Function(PlaylistBuilder) updates]) =>
      (new PlaylistBuilder()..update(updates)).build();

  _$Playlist._(
      {this.id,
      this.uid,
      this.title,
      this.videoRefs,
      this.createdAt,
      this.description,
      this.category,
      this.thumbnailUrl,
      this.searchIndex})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Playlist', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Playlist', 'uid');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Playlist', 'title');
    }
    if (videoRefs == null) {
      throw new BuiltValueNullFieldError('Playlist', 'videoRefs');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Playlist', 'createdAt');
    }
    if (searchIndex == null) {
      throw new BuiltValueNullFieldError('Playlist', 'searchIndex');
    }
  }

  @override
  Playlist rebuild(void Function(PlaylistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistBuilder toBuilder() => new PlaylistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Playlist &&
        id == other.id &&
        uid == other.uid &&
        title == other.title &&
        videoRefs == other.videoRefs &&
        createdAt == other.createdAt &&
        description == other.description &&
        category == other.category &&
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
                        $jc(
                            $jc($jc($jc(0, id.hashCode), uid.hashCode),
                                title.hashCode),
                            videoRefs.hashCode),
                        createdAt.hashCode),
                    description.hashCode),
                category.hashCode),
            thumbnailUrl.hashCode),
        searchIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Playlist')
          ..add('id', id)
          ..add('uid', uid)
          ..add('title', title)
          ..add('videoRefs', videoRefs)
          ..add('createdAt', createdAt)
          ..add('description', description)
          ..add('category', category)
          ..add('thumbnailUrl', thumbnailUrl)
          ..add('searchIndex', searchIndex))
        .toString();
  }
}

class PlaylistBuilder implements Builder<Playlist, PlaylistBuilder> {
  _$Playlist _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<String> _videoRefs;
  ListBuilder<String> get videoRefs =>
      _$this._videoRefs ??= new ListBuilder<String>();
  set videoRefs(ListBuilder<String> videoRefs) => _$this._videoRefs = videoRefs;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _thumbnailUrl;
  String get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  ListBuilder<String> _searchIndex;
  ListBuilder<String> get searchIndex =>
      _$this._searchIndex ??= new ListBuilder<String>();
  set searchIndex(ListBuilder<String> searchIndex) =>
      _$this._searchIndex = searchIndex;

  PlaylistBuilder();

  PlaylistBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _title = _$v.title;
      _videoRefs = _$v.videoRefs?.toBuilder();
      _createdAt = _$v.createdAt;
      _description = _$v.description;
      _category = _$v.category;
      _thumbnailUrl = _$v.thumbnailUrl;
      _searchIndex = _$v.searchIndex?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Playlist other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Playlist;
  }

  @override
  void update(void Function(PlaylistBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Playlist build() {
    _$Playlist _$result;
    try {
      _$result = _$v ??
          new _$Playlist._(
              id: id,
              uid: uid,
              title: title,
              videoRefs: videoRefs.build(),
              createdAt: createdAt,
              description: description,
              category: category,
              thumbnailUrl: thumbnailUrl,
              searchIndex: searchIndex.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videoRefs';
        videoRefs.build();

        _$failedField = 'searchIndex';
        searchIndex.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Playlist', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PlaylistInfo extends PlaylistInfo {
  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final String thumbnailPath;
  @override
  final BuiltList<String> videoRefs;

  factory _$PlaylistInfo([void Function(PlaylistInfoBuilder) updates]) =>
      (new PlaylistInfoBuilder()..update(updates)).build();

  _$PlaylistInfo._(
      {this.title,
      this.description,
      this.category,
      this.thumbnailPath,
      this.videoRefs})
      : super._();

  @override
  PlaylistInfo rebuild(void Function(PlaylistInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistInfoBuilder toBuilder() => new PlaylistInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaylistInfo &&
        title == other.title &&
        description == other.description &&
        category == other.category &&
        thumbnailPath == other.thumbnailPath &&
        videoRefs == other.videoRefs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, title.hashCode), description.hashCode),
                category.hashCode),
            thumbnailPath.hashCode),
        videoRefs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlaylistInfo')
          ..add('title', title)
          ..add('description', description)
          ..add('category', category)
          ..add('thumbnailPath', thumbnailPath)
          ..add('videoRefs', videoRefs))
        .toString();
  }
}

class PlaylistInfoBuilder
    implements Builder<PlaylistInfo, PlaylistInfoBuilder> {
  _$PlaylistInfo _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _thumbnailPath;
  String get thumbnailPath => _$this._thumbnailPath;
  set thumbnailPath(String thumbnailPath) =>
      _$this._thumbnailPath = thumbnailPath;

  ListBuilder<String> _videoRefs;
  ListBuilder<String> get videoRefs =>
      _$this._videoRefs ??= new ListBuilder<String>();
  set videoRefs(ListBuilder<String> videoRefs) => _$this._videoRefs = videoRefs;

  PlaylistInfoBuilder();

  PlaylistInfoBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _category = _$v.category;
      _thumbnailPath = _$v.thumbnailPath;
      _videoRefs = _$v.videoRefs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaylistInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PlaylistInfo;
  }

  @override
  void update(void Function(PlaylistInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlaylistInfo build() {
    _$PlaylistInfo _$result;
    try {
      _$result = _$v ??
          new _$PlaylistInfo._(
              title: title,
              description: description,
              category: category,
              thumbnailPath: thumbnailPath,
              videoRefs: _videoRefs?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videoRefs';
        _videoRefs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlaylistInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PlaylistsState extends PlaylistsState {
  @override
  final PlaylistInfo info;
  @override
  final BuiltList<Playlist> playlists;
  @override
  final BuiltList<Playlist> searchResult;

  factory _$PlaylistsState([void Function(PlaylistsStateBuilder) updates]) =>
      (new PlaylistsStateBuilder()..update(updates)).build();

  _$PlaylistsState._({this.info, this.playlists, this.searchResult})
      : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('PlaylistsState', 'info');
    }
    if (playlists == null) {
      throw new BuiltValueNullFieldError('PlaylistsState', 'playlists');
    }
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('PlaylistsState', 'searchResult');
    }
  }

  @override
  PlaylistsState rebuild(void Function(PlaylistsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistsStateBuilder toBuilder() =>
      new PlaylistsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaylistsState &&
        info == other.info &&
        playlists == other.playlists &&
        searchResult == other.searchResult;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, info.hashCode), playlists.hashCode), searchResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlaylistsState')
          ..add('info', info)
          ..add('playlists', playlists)
          ..add('searchResult', searchResult))
        .toString();
  }
}

class PlaylistsStateBuilder
    implements Builder<PlaylistsState, PlaylistsStateBuilder> {
  _$PlaylistsState _$v;

  PlaylistInfoBuilder _info;
  PlaylistInfoBuilder get info => _$this._info ??= new PlaylistInfoBuilder();
  set info(PlaylistInfoBuilder info) => _$this._info = info;

  ListBuilder<Playlist> _playlists;
  ListBuilder<Playlist> get playlists =>
      _$this._playlists ??= new ListBuilder<Playlist>();
  set playlists(ListBuilder<Playlist> playlists) =>
      _$this._playlists = playlists;

  ListBuilder<Playlist> _searchResult;
  ListBuilder<Playlist> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Playlist>();
  set searchResult(ListBuilder<Playlist> searchResult) =>
      _$this._searchResult = searchResult;

  PlaylistsStateBuilder();

  PlaylistsStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _playlists = _$v.playlists?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaylistsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PlaylistsState;
  }

  @override
  void update(void Function(PlaylistsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlaylistsState build() {
    _$PlaylistsState _$result;
    try {
      _$result = _$v ??
          new _$PlaylistsState._(
              info: info.build(),
              playlists: playlists.build(),
              searchResult: searchResult.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
        _$failedField = 'playlists';
        playlists.build();
        _$failedField = 'searchResult';
        searchResult.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlaylistsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
