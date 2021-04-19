// GENERATED CODE - DO NOT MODIFY BY HAND

part of workshops_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Workshop> _$workshopSerializer = new _$WorkshopSerializer();
Serializer<WorkshopsState> _$workshopsStateSerializer =
    new _$WorkshopsStateSerializer();

class _$WorkshopSerializer implements StructuredSerializer<Workshop> {
  @override
  final Iterable<Type> types = const [Workshop, _$Workshop];
  @override
  final String wireName = 'Workshop';

  @override
  Iterable<Object> serialize(Serializers serializers, Workshop object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'tag',
      serializers.serialize(object.tag, specifiedType: const FullType(String)),
      'onlineEvent',
      serializers.serialize(object.onlineEvent,
          specifiedType: const FullType(bool)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(int)),
    ];
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnailUrl != null) {
      result
        ..add('thumbnailUrl')
        ..add(serializers.serialize(object.thumbnailUrl,
            specifiedType: const FullType(String)));
    }
    if (object.participants != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(object.participants,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Workshop deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkshopBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onlineEvent':
          result.onlineEvent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnailUrl':
          result.thumbnailUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkshopsStateSerializer
    implements StructuredSerializer<WorkshopsState> {
  @override
  final Iterable<Type> types = const [WorkshopsState, _$WorkshopsState];
  @override
  final String wireName = 'WorkshopsState';

  @override
  Iterable<Object> serialize(Serializers serializers, WorkshopsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'workshops',
      serializers.serialize(object.workshops,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Workshop)])),
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Workshop)])),
    ];

    return result;
  }

  @override
  WorkshopsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkshopsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'workshops':
          result.workshops.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Workshop)]))
              as BuiltList<Object>);
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Workshop)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Workshop extends Workshop {
  @override
  final String id;
  @override
  final String description;
  @override
  final String tag;
  @override
  final bool onlineEvent;
  @override
  final int date;
  @override
  final String location;
  @override
  final String thumbnailUrl;
  @override
  final BuiltList<String> participants;

  factory _$Workshop([void Function(WorkshopBuilder) updates]) =>
      (new WorkshopBuilder()..update(updates)).build();

  _$Workshop._(
      {this.id,
      this.description,
      this.tag,
      this.onlineEvent,
      this.date,
      this.location,
      this.thumbnailUrl,
      this.participants})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Workshop', 'id');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Workshop', 'description');
    }
    if (tag == null) {
      throw new BuiltValueNullFieldError('Workshop', 'tag');
    }
    if (onlineEvent == null) {
      throw new BuiltValueNullFieldError('Workshop', 'onlineEvent');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Workshop', 'date');
    }
  }

  @override
  Workshop rebuild(void Function(WorkshopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkshopBuilder toBuilder() => new WorkshopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Workshop &&
        id == other.id &&
        description == other.description &&
        tag == other.tag &&
        onlineEvent == other.onlineEvent &&
        date == other.date &&
        location == other.location &&
        thumbnailUrl == other.thumbnailUrl &&
        participants == other.participants;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), description.hashCode),
                            tag.hashCode),
                        onlineEvent.hashCode),
                    date.hashCode),
                location.hashCode),
            thumbnailUrl.hashCode),
        participants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Workshop')
          ..add('id', id)
          ..add('description', description)
          ..add('tag', tag)
          ..add('onlineEvent', onlineEvent)
          ..add('date', date)
          ..add('location', location)
          ..add('thumbnailUrl', thumbnailUrl)
          ..add('participants', participants))
        .toString();
  }
}

class WorkshopBuilder implements Builder<Workshop, WorkshopBuilder> {
  _$Workshop _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  bool _onlineEvent;
  bool get onlineEvent => _$this._onlineEvent;
  set onlineEvent(bool onlineEvent) => _$this._onlineEvent = onlineEvent;

  int _date;
  int get date => _$this._date;
  set date(int date) => _$this._date = date;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _thumbnailUrl;
  String get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  ListBuilder<String> _participants;
  ListBuilder<String> get participants =>
      _$this._participants ??= new ListBuilder<String>();
  set participants(ListBuilder<String> participants) =>
      _$this._participants = participants;

  WorkshopBuilder();

  WorkshopBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _description = _$v.description;
      _tag = _$v.tag;
      _onlineEvent = _$v.onlineEvent;
      _date = _$v.date;
      _location = _$v.location;
      _thumbnailUrl = _$v.thumbnailUrl;
      _participants = _$v.participants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Workshop other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Workshop;
  }

  @override
  void update(void Function(WorkshopBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Workshop build() {
    _$Workshop _$result;
    try {
      _$result = _$v ??
          new _$Workshop._(
              id: id,
              description: description,
              tag: tag,
              onlineEvent: onlineEvent,
              date: date,
              location: location,
              thumbnailUrl: thumbnailUrl,
              participants: _participants?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participants';
        _participants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Workshop', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WorkshopsState extends WorkshopsState {
  @override
  final BuiltList<Workshop> workshops;
  @override
  final BuiltList<Workshop> searchResult;

  factory _$WorkshopsState([void Function(WorkshopsStateBuilder) updates]) =>
      (new WorkshopsStateBuilder()..update(updates)).build();

  _$WorkshopsState._({this.workshops, this.searchResult}) : super._() {
    if (workshops == null) {
      throw new BuiltValueNullFieldError('WorkshopsState', 'workshops');
    }
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('WorkshopsState', 'searchResult');
    }
  }

  @override
  WorkshopsState rebuild(void Function(WorkshopsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkshopsStateBuilder toBuilder() =>
      new WorkshopsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkshopsState &&
        workshops == other.workshops &&
        searchResult == other.searchResult;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, workshops.hashCode), searchResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkshopsState')
          ..add('workshops', workshops)
          ..add('searchResult', searchResult))
        .toString();
  }
}

class WorkshopsStateBuilder
    implements Builder<WorkshopsState, WorkshopsStateBuilder> {
  _$WorkshopsState _$v;

  ListBuilder<Workshop> _workshops;
  ListBuilder<Workshop> get workshops =>
      _$this._workshops ??= new ListBuilder<Workshop>();
  set workshops(ListBuilder<Workshop> workshops) =>
      _$this._workshops = workshops;

  ListBuilder<Workshop> _searchResult;
  ListBuilder<Workshop> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Workshop>();
  set searchResult(ListBuilder<Workshop> searchResult) =>
      _$this._searchResult = searchResult;

  WorkshopsStateBuilder();

  WorkshopsStateBuilder get _$this {
    if (_$v != null) {
      _workshops = _$v.workshops?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkshopsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkshopsState;
  }

  @override
  void update(void Function(WorkshopsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkshopsState build() {
    _$WorkshopsState _$result;
    try {
      _$result = _$v ??
          new _$WorkshopsState._(
              workshops: workshops.build(), searchResult: searchResult.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'workshops';
        workshops.build();
        _$failedField = 'searchResult';
        searchResult.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WorkshopsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
