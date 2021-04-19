// GENERATED CODE - DO NOT MODIFY BY HAND

part of inquiries_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Inquiry> _$inquirySerializer = new _$InquirySerializer();
Serializer<InquiriesState> _$inquiriesStateSerializer =
    new _$InquiriesStateSerializer();

class _$InquirySerializer implements StructuredSerializer<Inquiry> {
  @override
  final Iterable<Type> types = const [Inquiry, _$Inquiry];
  @override
  final String wireName = 'Inquiry';

  @override
  Iterable<Object> serialize(Serializers serializers, Inquiry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'inquirerEmail',
      serializers.serialize(object.inquirerEmail,
          specifiedType: const FullType(String)),
      'mentorId',
      serializers.serialize(object.mentorId,
          specifiedType: const FullType(String)),
      'read',
      serializers.serialize(object.read, specifiedType: const FullType(bool)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Inquiry deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InquiryBuilder();

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
        case 'inquirerEmail':
          result.inquirerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mentorId':
          result.mentorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$InquiriesStateSerializer
    implements StructuredSerializer<InquiriesState> {
  @override
  final Iterable<Type> types = const [InquiriesState, _$InquiriesState];
  @override
  final String wireName = 'InquiriesState';

  @override
  Iterable<Object> serialize(Serializers serializers, InquiriesState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'inquiries',
      serializers.serialize(object.inquiries,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Inquiry)])),
    ];

    return result;
  }

  @override
  InquiriesState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InquiriesStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'inquiries':
          result.inquiries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Inquiry)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Inquiry extends Inquiry {
  @override
  final String id;
  @override
  final String inquirerEmail;
  @override
  final String mentorId;
  @override
  final bool read;
  @override
  final int createdAt;

  factory _$Inquiry([void Function(InquiryBuilder) updates]) =>
      (new InquiryBuilder()..update(updates)).build();

  _$Inquiry._(
      {this.id, this.inquirerEmail, this.mentorId, this.read, this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Inquiry', 'id');
    }
    if (inquirerEmail == null) {
      throw new BuiltValueNullFieldError('Inquiry', 'inquirerEmail');
    }
    if (mentorId == null) {
      throw new BuiltValueNullFieldError('Inquiry', 'mentorId');
    }
    if (read == null) {
      throw new BuiltValueNullFieldError('Inquiry', 'read');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Inquiry', 'createdAt');
    }
  }

  @override
  Inquiry rebuild(void Function(InquiryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InquiryBuilder toBuilder() => new InquiryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Inquiry &&
        id == other.id &&
        inquirerEmail == other.inquirerEmail &&
        mentorId == other.mentorId &&
        read == other.read &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), inquirerEmail.hashCode),
                mentorId.hashCode),
            read.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Inquiry')
          ..add('id', id)
          ..add('inquirerEmail', inquirerEmail)
          ..add('mentorId', mentorId)
          ..add('read', read)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class InquiryBuilder implements Builder<Inquiry, InquiryBuilder> {
  _$Inquiry _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _inquirerEmail;
  String get inquirerEmail => _$this._inquirerEmail;
  set inquirerEmail(String inquirerEmail) =>
      _$this._inquirerEmail = inquirerEmail;

  String _mentorId;
  String get mentorId => _$this._mentorId;
  set mentorId(String mentorId) => _$this._mentorId = mentorId;

  bool _read;
  bool get read => _$this._read;
  set read(bool read) => _$this._read = read;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  InquiryBuilder();

  InquiryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _inquirerEmail = _$v.inquirerEmail;
      _mentorId = _$v.mentorId;
      _read = _$v.read;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Inquiry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Inquiry;
  }

  @override
  void update(void Function(InquiryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Inquiry build() {
    final _$result = _$v ??
        new _$Inquiry._(
            id: id,
            inquirerEmail: inquirerEmail,
            mentorId: mentorId,
            read: read,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

class _$InquiriesState extends InquiriesState {
  @override
  final BuiltList<Inquiry> inquiries;

  factory _$InquiriesState([void Function(InquiriesStateBuilder) updates]) =>
      (new InquiriesStateBuilder()..update(updates)).build();

  _$InquiriesState._({this.inquiries}) : super._() {
    if (inquiries == null) {
      throw new BuiltValueNullFieldError('InquiriesState', 'inquiries');
    }
  }

  @override
  InquiriesState rebuild(void Function(InquiriesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InquiriesStateBuilder toBuilder() =>
      new InquiriesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InquiriesState && inquiries == other.inquiries;
  }

  @override
  int get hashCode {
    return $jf($jc(0, inquiries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InquiriesState')
          ..add('inquiries', inquiries))
        .toString();
  }
}

class InquiriesStateBuilder
    implements Builder<InquiriesState, InquiriesStateBuilder> {
  _$InquiriesState _$v;

  ListBuilder<Inquiry> _inquiries;
  ListBuilder<Inquiry> get inquiries =>
      _$this._inquiries ??= new ListBuilder<Inquiry>();
  set inquiries(ListBuilder<Inquiry> inquiries) =>
      _$this._inquiries = inquiries;

  InquiriesStateBuilder();

  InquiriesStateBuilder get _$this {
    if (_$v != null) {
      _inquiries = _$v.inquiries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InquiriesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InquiriesState;
  }

  @override
  void update(void Function(InquiriesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InquiriesState build() {
    _$InquiriesState _$result;
    try {
      _$result = _$v ?? new _$InquiriesState._(inquiries: inquiries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'inquiries';
        inquiries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InquiriesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
