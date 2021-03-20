// GENERATED CODE - DO NOT MODIFY BY HAND

part of mentoring_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Mentorship> _$mentorshipSerializer = new _$MentorshipSerializer();
Serializer<MentorshipInfo> _$mentorshipInfoSerializer =
    new _$MentorshipInfoSerializer();
Serializer<MentorshipsState> _$mentorshipsStateSerializer =
    new _$MentorshipsStateSerializer();

class _$MentorshipSerializer implements StructuredSerializer<Mentorship> {
  @override
  final Iterable<Type> types = const [Mentorship, _$Mentorship];
  @override
  final String wireName = 'Mentorship';

  @override
  Iterable<Object> serialize(Serializers serializers, Mentorship object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'mentorId',
      serializers.serialize(object.mentorId,
          specifiedType: const FullType(String)),
      'menteeIds',
      serializers.serialize(object.menteeIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.mentorEmail != null) {
      result
        ..add('mentorEmail')
        ..add(serializers.serialize(object.mentorEmail,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(int)));
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
  Mentorship deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MentorshipBuilder();

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
        case 'mentorId':
          result.mentorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'menteeIds':
          result.menteeIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'mentorEmail':
          result.mentorEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$MentorshipInfoSerializer
    implements StructuredSerializer<MentorshipInfo> {
  @override
  final Iterable<Type> types = const [MentorshipInfo, _$MentorshipInfo];
  @override
  final String wireName = 'MentorshipInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, MentorshipInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.menteeIds != null) {
      result
        ..add('menteeIds')
        ..add(serializers.serialize(object.menteeIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.mentorEmail != null) {
      result
        ..add('mentorEmail')
        ..add(serializers.serialize(object.mentorEmail,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(int)));
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
  MentorshipInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MentorshipInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'menteeIds':
          result.menteeIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'mentorEmail':
          result.mentorEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$MentorshipsStateSerializer
    implements StructuredSerializer<MentorshipsState> {
  @override
  final Iterable<Type> types = const [MentorshipsState, _$MentorshipsState];
  @override
  final String wireName = 'MentorshipsState';

  @override
  Iterable<Object> serialize(Serializers serializers, MentorshipsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(MentorshipInfo)),
      'mentorships',
      serializers.serialize(object.mentorships,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Mentorship)])),
    ];

    return result;
  }

  @override
  MentorshipsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MentorshipsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(MentorshipInfo)) as MentorshipInfo);
          break;
        case 'mentorships':
          result.mentorships.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Mentorship)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Mentorship extends Mentorship {
  @override
  final String id;
  @override
  final String mentorId;
  @override
  final BuiltList<String> menteeIds;
  @override
  final String mentorEmail;
  @override
  final String description;
  @override
  final int price;
  @override
  final int createdAt;

  factory _$Mentorship([void Function(MentorshipBuilder) updates]) =>
      (new MentorshipBuilder()..update(updates)).build();

  _$Mentorship._(
      {this.id,
      this.mentorId,
      this.menteeIds,
      this.mentorEmail,
      this.description,
      this.price,
      this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Mentorship', 'id');
    }
    if (mentorId == null) {
      throw new BuiltValueNullFieldError('Mentorship', 'mentorId');
    }
    if (menteeIds == null) {
      throw new BuiltValueNullFieldError('Mentorship', 'menteeIds');
    }
  }

  @override
  Mentorship rebuild(void Function(MentorshipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentorshipBuilder toBuilder() => new MentorshipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mentorship &&
        id == other.id &&
        mentorId == other.mentorId &&
        menteeIds == other.menteeIds &&
        mentorEmail == other.mentorEmail &&
        description == other.description &&
        price == other.price &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), mentorId.hashCode),
                        menteeIds.hashCode),
                    mentorEmail.hashCode),
                description.hashCode),
            price.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Mentorship')
          ..add('id', id)
          ..add('mentorId', mentorId)
          ..add('menteeIds', menteeIds)
          ..add('mentorEmail', mentorEmail)
          ..add('description', description)
          ..add('price', price)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class MentorshipBuilder implements Builder<Mentorship, MentorshipBuilder> {
  _$Mentorship _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _mentorId;
  String get mentorId => _$this._mentorId;
  set mentorId(String mentorId) => _$this._mentorId = mentorId;

  ListBuilder<String> _menteeIds;
  ListBuilder<String> get menteeIds =>
      _$this._menteeIds ??= new ListBuilder<String>();
  set menteeIds(ListBuilder<String> menteeIds) => _$this._menteeIds = menteeIds;

  String _mentorEmail;
  String get mentorEmail => _$this._mentorEmail;
  set mentorEmail(String mentorEmail) => _$this._mentorEmail = mentorEmail;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  MentorshipBuilder();

  MentorshipBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _mentorId = _$v.mentorId;
      _menteeIds = _$v.menteeIds?.toBuilder();
      _mentorEmail = _$v.mentorEmail;
      _description = _$v.description;
      _price = _$v.price;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Mentorship other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Mentorship;
  }

  @override
  void update(void Function(MentorshipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Mentorship build() {
    _$Mentorship _$result;
    try {
      _$result = _$v ??
          new _$Mentorship._(
              id: id,
              mentorId: mentorId,
              menteeIds: menteeIds.build(),
              mentorEmail: mentorEmail,
              description: description,
              price: price,
              createdAt: createdAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menteeIds';
        menteeIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Mentorship', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MentorshipInfo extends MentorshipInfo {
  @override
  final BuiltList<String> menteeIds;
  @override
  final String mentorEmail;
  @override
  final String description;
  @override
  final int price;
  @override
  final int createdAt;

  factory _$MentorshipInfo([void Function(MentorshipInfoBuilder) updates]) =>
      (new MentorshipInfoBuilder()..update(updates)).build();

  _$MentorshipInfo._(
      {this.menteeIds,
      this.mentorEmail,
      this.description,
      this.price,
      this.createdAt})
      : super._();

  @override
  MentorshipInfo rebuild(void Function(MentorshipInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentorshipInfoBuilder toBuilder() =>
      new MentorshipInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MentorshipInfo &&
        menteeIds == other.menteeIds &&
        mentorEmail == other.mentorEmail &&
        description == other.description &&
        price == other.price &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, menteeIds.hashCode), mentorEmail.hashCode),
                description.hashCode),
            price.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MentorshipInfo')
          ..add('menteeIds', menteeIds)
          ..add('mentorEmail', mentorEmail)
          ..add('description', description)
          ..add('price', price)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class MentorshipInfoBuilder
    implements Builder<MentorshipInfo, MentorshipInfoBuilder> {
  _$MentorshipInfo _$v;

  ListBuilder<String> _menteeIds;
  ListBuilder<String> get menteeIds =>
      _$this._menteeIds ??= new ListBuilder<String>();
  set menteeIds(ListBuilder<String> menteeIds) => _$this._menteeIds = menteeIds;

  String _mentorEmail;
  String get mentorEmail => _$this._mentorEmail;
  set mentorEmail(String mentorEmail) => _$this._mentorEmail = mentorEmail;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  MentorshipInfoBuilder();

  MentorshipInfoBuilder get _$this {
    if (_$v != null) {
      _menteeIds = _$v.menteeIds?.toBuilder();
      _mentorEmail = _$v.mentorEmail;
      _description = _$v.description;
      _price = _$v.price;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MentorshipInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MentorshipInfo;
  }

  @override
  void update(void Function(MentorshipInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MentorshipInfo build() {
    _$MentorshipInfo _$result;
    try {
      _$result = _$v ??
          new _$MentorshipInfo._(
              menteeIds: _menteeIds?.build(),
              mentorEmail: mentorEmail,
              description: description,
              price: price,
              createdAt: createdAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menteeIds';
        _menteeIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MentorshipInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MentorshipsState extends MentorshipsState {
  @override
  final MentorshipInfo info;
  @override
  final BuiltList<Mentorship> mentorships;

  factory _$MentorshipsState(
          [void Function(MentorshipsStateBuilder) updates]) =>
      (new MentorshipsStateBuilder()..update(updates)).build();

  _$MentorshipsState._({this.info, this.mentorships}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('MentorshipsState', 'info');
    }
    if (mentorships == null) {
      throw new BuiltValueNullFieldError('MentorshipsState', 'mentorships');
    }
  }

  @override
  MentorshipsState rebuild(void Function(MentorshipsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentorshipsStateBuilder toBuilder() =>
      new MentorshipsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MentorshipsState &&
        info == other.info &&
        mentorships == other.mentorships;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, info.hashCode), mentorships.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MentorshipsState')
          ..add('info', info)
          ..add('mentorships', mentorships))
        .toString();
  }
}

class MentorshipsStateBuilder
    implements Builder<MentorshipsState, MentorshipsStateBuilder> {
  _$MentorshipsState _$v;

  MentorshipInfoBuilder _info;
  MentorshipInfoBuilder get info =>
      _$this._info ??= new MentorshipInfoBuilder();
  set info(MentorshipInfoBuilder info) => _$this._info = info;

  ListBuilder<Mentorship> _mentorships;
  ListBuilder<Mentorship> get mentorships =>
      _$this._mentorships ??= new ListBuilder<Mentorship>();
  set mentorships(ListBuilder<Mentorship> mentorships) =>
      _$this._mentorships = mentorships;

  MentorshipsStateBuilder();

  MentorshipsStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _mentorships = _$v.mentorships?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MentorshipsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MentorshipsState;
  }

  @override
  void update(void Function(MentorshipsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MentorshipsState build() {
    _$MentorshipsState _$result;
    try {
      _$result = _$v ??
          new _$MentorshipsState._(
              info: info.build(), mentorships: mentorships.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
        _$failedField = 'mentorships';
        mentorships.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MentorshipsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new