// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(PostsState)),
      'videos',
      serializers.serialize(object.videos,
          specifiedType: const FullType(VideosState)),
      'playlists',
      serializers.serialize(object.playlists,
          specifiedType: const FullType(PlaylistsState)),
      'mentorships',
      serializers.serialize(object.mentorships,
          specifiedType: const FullType(MentorshipsState)),
      'workshops',
      serializers.serialize(object.workshops,
          specifiedType: const FullType(WorkshopsState)),
      'trackedItems',
      serializers.serialize(object.trackedItems,
          specifiedType: const FullType(TrackingsState)),
      'inquiries',
      serializers.serialize(object.inquiries,
          specifiedType: const FullType(InquiriesState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(PostsState)) as PostsState);
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
              specifiedType: const FullType(VideosState)) as VideosState);
          break;
        case 'playlists':
          result.playlists.replace(serializers.deserialize(value,
              specifiedType: const FullType(PlaylistsState)) as PlaylistsState);
          break;
        case 'mentorships':
          result.mentorships.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MentorshipsState))
              as MentorshipsState);
          break;
        case 'workshops':
          result.workshops.replace(serializers.deserialize(value,
              specifiedType: const FullType(WorkshopsState)) as WorkshopsState);
          break;
        case 'trackedItems':
          result.trackedItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(TrackingsState)) as TrackingsState);
          break;
        case 'inquiries':
          result.inquiries.replace(serializers.deserialize(value,
              specifiedType: const FullType(InquiriesState)) as InquiriesState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final PostsState posts;
  @override
  final VideosState videos;
  @override
  final PlaylistsState playlists;
  @override
  final MentorshipsState mentorships;
  @override
  final WorkshopsState workshops;
  @override
  final TrackingsState trackedItems;
  @override
  final InquiriesState inquiries;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.auth,
      this.posts,
      this.videos,
      this.playlists,
      this.mentorships,
      this.workshops,
      this.trackedItems,
      this.inquiries})
      : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('AppState', 'auth');
    }
    if (posts == null) {
      throw new BuiltValueNullFieldError('AppState', 'posts');
    }
    if (videos == null) {
      throw new BuiltValueNullFieldError('AppState', 'videos');
    }
    if (playlists == null) {
      throw new BuiltValueNullFieldError('AppState', 'playlists');
    }
    if (mentorships == null) {
      throw new BuiltValueNullFieldError('AppState', 'mentorships');
    }
    if (workshops == null) {
      throw new BuiltValueNullFieldError('AppState', 'workshops');
    }
    if (trackedItems == null) {
      throw new BuiltValueNullFieldError('AppState', 'trackedItems');
    }
    if (inquiries == null) {
      throw new BuiltValueNullFieldError('AppState', 'inquiries');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        posts == other.posts &&
        videos == other.videos &&
        playlists == other.playlists &&
        mentorships == other.mentorships &&
        workshops == other.workshops &&
        trackedItems == other.trackedItems &&
        inquiries == other.inquiries;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, auth.hashCode), posts.hashCode),
                            videos.hashCode),
                        playlists.hashCode),
                    mentorships.hashCode),
                workshops.hashCode),
            trackedItems.hashCode),
        inquiries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('posts', posts)
          ..add('videos', videos)
          ..add('playlists', playlists)
          ..add('mentorships', mentorships)
          ..add('workshops', workshops)
          ..add('trackedItems', trackedItems)
          ..add('inquiries', inquiries))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  PostsStateBuilder _posts;
  PostsStateBuilder get posts => _$this._posts ??= new PostsStateBuilder();
  set posts(PostsStateBuilder posts) => _$this._posts = posts;

  VideosStateBuilder _videos;
  VideosStateBuilder get videos => _$this._videos ??= new VideosStateBuilder();
  set videos(VideosStateBuilder videos) => _$this._videos = videos;

  PlaylistsStateBuilder _playlists;
  PlaylistsStateBuilder get playlists =>
      _$this._playlists ??= new PlaylistsStateBuilder();
  set playlists(PlaylistsStateBuilder playlists) =>
      _$this._playlists = playlists;

  MentorshipsStateBuilder _mentorships;
  MentorshipsStateBuilder get mentorships =>
      _$this._mentorships ??= new MentorshipsStateBuilder();
  set mentorships(MentorshipsStateBuilder mentorships) =>
      _$this._mentorships = mentorships;

  WorkshopsStateBuilder _workshops;
  WorkshopsStateBuilder get workshops =>
      _$this._workshops ??= new WorkshopsStateBuilder();
  set workshops(WorkshopsStateBuilder workshops) =>
      _$this._workshops = workshops;

  TrackingsStateBuilder _trackedItems;
  TrackingsStateBuilder get trackedItems =>
      _$this._trackedItems ??= new TrackingsStateBuilder();
  set trackedItems(TrackingsStateBuilder trackedItems) =>
      _$this._trackedItems = trackedItems;

  InquiriesStateBuilder _inquiries;
  InquiriesStateBuilder get inquiries =>
      _$this._inquiries ??= new InquiriesStateBuilder();
  set inquiries(InquiriesStateBuilder inquiries) =>
      _$this._inquiries = inquiries;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _posts = _$v.posts?.toBuilder();
      _videos = _$v.videos?.toBuilder();
      _playlists = _$v.playlists?.toBuilder();
      _mentorships = _$v.mentorships?.toBuilder();
      _workshops = _$v.workshops?.toBuilder();
      _trackedItems = _$v.trackedItems?.toBuilder();
      _inquiries = _$v.inquiries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              posts: posts.build(),
              videos: videos.build(),
              playlists: playlists.build(),
              mentorships: mentorships.build(),
              workshops: workshops.build(),
              trackedItems: trackedItems.build(),
              inquiries: inquiries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'posts';
        posts.build();
        _$failedField = 'videos';
        videos.build();
        _$failedField = 'playlists';
        playlists.build();
        _$failedField = 'mentorships';
        mentorships.build();
        _$failedField = 'workshops';
        workshops.build();
        _$failedField = 'trackedItems';
        trackedItems.build();
        _$failedField = 'inquiries';
        inquiries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
