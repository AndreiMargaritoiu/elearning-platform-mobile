// GENERATED CODE - DO NOT MODIFY BY HAND

part of tracking_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tracking> _$trackingSerializer = new _$TrackingSerializer();
Serializer<TrackingsState> _$trackingsStateSerializer =
    new _$TrackingsStateSerializer();
Serializer<TrackingInfo> _$trackingInfoSerializer =
    new _$TrackingInfoSerializer();

class _$TrackingSerializer implements StructuredSerializer<Tracking> {
  @override
  final Iterable<Type> types = const [Tracking, _$Tracking];
  @override
  final String wireName = 'Tracking';

  @override
  Iterable<Object> serialize(Serializers serializers, Tracking object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    if (object.vid != null) {
      result
        ..add('vid')
        ..add(serializers.serialize(object.vid,
            specifiedType: const FullType(String)));
    }
    if (object.pid != null) {
      result
        ..add('pid')
        ..add(serializers.serialize(object.pid,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Tracking deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackingBuilder();

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
        case 'vid':
          result.vid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pid':
          result.pid = serializers.deserialize(value,
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

class _$TrackingsStateSerializer
    implements StructuredSerializer<TrackingsState> {
  @override
  final Iterable<Type> types = const [TrackingsState, _$TrackingsState];
  @override
  final String wireName = 'TrackingsState';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(TrackingInfo)),
      'trackedItems',
      serializers.serialize(object.trackedItems,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Tracking)])),
    ];

    return result;
  }

  @override
  TrackingsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(TrackingInfo)) as TrackingInfo);
          break;
        case 'trackedItems':
          result.trackedItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Tracking)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TrackingInfoSerializer implements StructuredSerializer<TrackingInfo> {
  @override
  final Iterable<Type> types = const [TrackingInfo, _$TrackingInfo];
  @override
  final String wireName = 'TrackingInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.vid != null) {
      result
        ..add('vid')
        ..add(serializers.serialize(object.vid,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TrackingInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackingInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vid':
          result.vid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tracking extends Tracking {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String vid;
  @override
  final String pid;
  @override
  final int createdAt;

  factory _$Tracking([void Function(TrackingBuilder) updates]) =>
      (new TrackingBuilder()..update(updates)).build();

  _$Tracking._({this.id, this.uid, this.vid, this.pid, this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Tracking', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Tracking', 'uid');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Tracking', 'createdAt');
    }
  }

  @override
  Tracking rebuild(void Function(TrackingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackingBuilder toBuilder() => new TrackingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tracking &&
        id == other.id &&
        uid == other.uid &&
        vid == other.vid &&
        pid == other.pid &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), uid.hashCode), vid.hashCode),
            pid.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tracking')
          ..add('id', id)
          ..add('uid', uid)
          ..add('vid', vid)
          ..add('pid', pid)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TrackingBuilder implements Builder<Tracking, TrackingBuilder> {
  _$Tracking _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _vid;
  String get vid => _$this._vid;
  set vid(String vid) => _$this._vid = vid;

  String _pid;
  String get pid => _$this._pid;
  set pid(String pid) => _$this._pid = pid;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  TrackingBuilder();

  TrackingBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _vid = _$v.vid;
      _pid = _$v.pid;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tracking other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tracking;
  }

  @override
  void update(void Function(TrackingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tracking build() {
    final _$result = _$v ??
        new _$Tracking._(
            id: id, uid: uid, vid: vid, pid: pid, createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

class _$TrackingsState extends TrackingsState {
  @override
  final TrackingInfo info;
  @override
  final BuiltList<Tracking> trackedItems;

  factory _$TrackingsState([void Function(TrackingsStateBuilder) updates]) =>
      (new TrackingsStateBuilder()..update(updates)).build();

  _$TrackingsState._({this.info, this.trackedItems}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('TrackingsState', 'info');
    }
    if (trackedItems == null) {
      throw new BuiltValueNullFieldError('TrackingsState', 'trackedItems');
    }
  }

  @override
  TrackingsState rebuild(void Function(TrackingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackingsStateBuilder toBuilder() =>
      new TrackingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackingsState &&
        info == other.info &&
        trackedItems == other.trackedItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, info.hashCode), trackedItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackingsState')
          ..add('info', info)
          ..add('trackedItems', trackedItems))
        .toString();
  }
}

class TrackingsStateBuilder
    implements Builder<TrackingsState, TrackingsStateBuilder> {
  _$TrackingsState _$v;

  TrackingInfoBuilder _info;
  TrackingInfoBuilder get info => _$this._info ??= new TrackingInfoBuilder();
  set info(TrackingInfoBuilder info) => _$this._info = info;

  ListBuilder<Tracking> _trackedItems;
  ListBuilder<Tracking> get trackedItems =>
      _$this._trackedItems ??= new ListBuilder<Tracking>();
  set trackedItems(ListBuilder<Tracking> trackedItems) =>
      _$this._trackedItems = trackedItems;

  TrackingsStateBuilder();

  TrackingsStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _trackedItems = _$v.trackedItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackingsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrackingsState;
  }

  @override
  void update(void Function(TrackingsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackingsState build() {
    _$TrackingsState _$result;
    try {
      _$result = _$v ??
          new _$TrackingsState._(
              info: info.build(), trackedItems: trackedItems.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
        _$failedField = 'trackedItems';
        trackedItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrackingsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TrackingInfo extends TrackingInfo {
  @override
  final String vid;

  factory _$TrackingInfo([void Function(TrackingInfoBuilder) updates]) =>
      (new TrackingInfoBuilder()..update(updates)).build();

  _$TrackingInfo._({this.vid}) : super._();

  @override
  TrackingInfo rebuild(void Function(TrackingInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackingInfoBuilder toBuilder() => new TrackingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackingInfo && vid == other.vid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, vid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackingInfo')..add('vid', vid))
        .toString();
  }
}

class TrackingInfoBuilder
    implements Builder<TrackingInfo, TrackingInfoBuilder> {
  _$TrackingInfo _$v;

  String _vid;
  String get vid => _$this._vid;
  set vid(String vid) => _$this._vid = vid;

  TrackingInfoBuilder();

  TrackingInfoBuilder get _$this {
    if (_$v != null) {
      _vid = _$v.vid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrackingInfo;
  }

  @override
  void update(void Function(TrackingInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackingInfo build() {
    final _$result = _$v ?? new _$TrackingInfo._(vid: vid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
