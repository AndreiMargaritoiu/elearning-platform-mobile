// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of inquiries_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SendInquiryTearOff {
  const _$SendInquiryTearOff();

// ignore: unused_element
  SendInquiry$ call(String mentorId) {
    return SendInquiry$(
      mentorId,
    );
  }

// ignore: unused_element
  SendInquirySuccessful successful() {
    return const SendInquirySuccessful();
  }

// ignore: unused_element
  SendInquiryError error(Object error) {
    return SendInquiryError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SendInquiry = _$SendInquiryTearOff();

/// @nodoc
mixin _$SendInquiry {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mentorId), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mentorId), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SendInquiry$ value), {
    @required Result successful(SendInquirySuccessful value),
    @required Result error(SendInquiryError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SendInquiry$ value), {
    Result successful(SendInquirySuccessful value),
    Result error(SendInquiryError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SendInquiryCopyWith<$Res> {
  factory $SendInquiryCopyWith(
          SendInquiry value, $Res Function(SendInquiry) then) =
      _$SendInquiryCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendInquiryCopyWithImpl<$Res> implements $SendInquiryCopyWith<$Res> {
  _$SendInquiryCopyWithImpl(this._value, this._then);

  final SendInquiry _value;
  // ignore: unused_field
  final $Res Function(SendInquiry) _then;
}

/// @nodoc
abstract class $SendInquiry$CopyWith<$Res> {
  factory $SendInquiry$CopyWith(
          SendInquiry$ value, $Res Function(SendInquiry$) then) =
      _$SendInquiry$CopyWithImpl<$Res>;
  $Res call({String mentorId});
}

/// @nodoc
class _$SendInquiry$CopyWithImpl<$Res> extends _$SendInquiryCopyWithImpl<$Res>
    implements $SendInquiry$CopyWith<$Res> {
  _$SendInquiry$CopyWithImpl(
      SendInquiry$ _value, $Res Function(SendInquiry$) _then)
      : super(_value, (v) => _then(v as SendInquiry$));

  @override
  SendInquiry$ get _value => super._value as SendInquiry$;

  @override
  $Res call({
    Object mentorId = freezed,
  }) {
    return _then(SendInquiry$(
      mentorId == freezed ? _value.mentorId : mentorId as String,
    ));
  }
}

/// @nodoc
class _$SendInquiry$ implements SendInquiry$ {
  const _$SendInquiry$(this.mentorId) : assert(mentorId != null);

  @override
  final String mentorId;

  @override
  String toString() {
    return 'SendInquiry(mentorId: $mentorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendInquiry$ &&
            (identical(other.mentorId, mentorId) ||
                const DeepCollectionEquality()
                    .equals(other.mentorId, mentorId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentorId);

  @override
  $SendInquiry$CopyWith<SendInquiry$> get copyWith =>
      _$SendInquiry$CopyWithImpl<SendInquiry$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mentorId), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(mentorId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mentorId), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(mentorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SendInquiry$ value), {
    @required Result successful(SendInquirySuccessful value),
    @required Result error(SendInquiryError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SendInquiry$ value), {
    Result successful(SendInquirySuccessful value),
    Result error(SendInquiryError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SendInquiry$ implements SendInquiry {
  const factory SendInquiry$(String mentorId) = _$SendInquiry$;

  String get mentorId;
  $SendInquiry$CopyWith<SendInquiry$> get copyWith;
}

/// @nodoc
abstract class $SendInquirySuccessfulCopyWith<$Res> {
  factory $SendInquirySuccessfulCopyWith(SendInquirySuccessful value,
          $Res Function(SendInquirySuccessful) then) =
      _$SendInquirySuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendInquirySuccessfulCopyWithImpl<$Res>
    extends _$SendInquiryCopyWithImpl<$Res>
    implements $SendInquirySuccessfulCopyWith<$Res> {
  _$SendInquirySuccessfulCopyWithImpl(
      SendInquirySuccessful _value, $Res Function(SendInquirySuccessful) _then)
      : super(_value, (v) => _then(v as SendInquirySuccessful));

  @override
  SendInquirySuccessful get _value => super._value as SendInquirySuccessful;
}

/// @nodoc
class _$SendInquirySuccessful implements SendInquirySuccessful {
  const _$SendInquirySuccessful();

  @override
  String toString() {
    return 'SendInquiry.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendInquirySuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mentorId), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mentorId), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SendInquiry$ value), {
    @required Result successful(SendInquirySuccessful value),
    @required Result error(SendInquiryError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SendInquiry$ value), {
    Result successful(SendInquirySuccessful value),
    Result error(SendInquiryError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SendInquirySuccessful implements SendInquiry {
  const factory SendInquirySuccessful() = _$SendInquirySuccessful;
}

/// @nodoc
abstract class $SendInquiryErrorCopyWith<$Res> {
  factory $SendInquiryErrorCopyWith(
          SendInquiryError value, $Res Function(SendInquiryError) then) =
      _$SendInquiryErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SendInquiryErrorCopyWithImpl<$Res>
    extends _$SendInquiryCopyWithImpl<$Res>
    implements $SendInquiryErrorCopyWith<$Res> {
  _$SendInquiryErrorCopyWithImpl(
      SendInquiryError _value, $Res Function(SendInquiryError) _then)
      : super(_value, (v) => _then(v as SendInquiryError));

  @override
  SendInquiryError get _value => super._value as SendInquiryError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SendInquiryError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SendInquiryError implements SendInquiryError {
  const _$SendInquiryError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SendInquiry.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendInquiryError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SendInquiryErrorCopyWith<SendInquiryError> get copyWith =>
      _$SendInquiryErrorCopyWithImpl<SendInquiryError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mentorId), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mentorId), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SendInquiry$ value), {
    @required Result successful(SendInquirySuccessful value),
    @required Result error(SendInquiryError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SendInquiry$ value), {
    Result successful(SendInquirySuccessful value),
    Result error(SendInquiryError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SendInquiryError implements SendInquiry, ErrorAction {
  const factory SendInquiryError(Object error) = _$SendInquiryError;

  Object get error;
  $SendInquiryErrorCopyWith<SendInquiryError> get copyWith;
}

/// @nodoc
class _$GetUserInquiriesTearOff {
  const _$GetUserInquiriesTearOff();

// ignore: unused_element
  GetUserInquiries$ call() {
    return const GetUserInquiries$();
  }

// ignore: unused_element
  GetUserInquiriesSuccessful successful(List<Inquiry> inquiries) {
    return GetUserInquiriesSuccessful(
      inquiries,
    );
  }

// ignore: unused_element
  GetUserInquiriesError error(Object error) {
    return GetUserInquiriesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetUserInquiries = _$GetUserInquiriesTearOff();

/// @nodoc
mixin _$GetUserInquiries {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Inquiry> inquiries),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Inquiry> inquiries),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    @required Result successful(GetUserInquiriesSuccessful value),
    @required Result error(GetUserInquiriesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    Result successful(GetUserInquiriesSuccessful value),
    Result error(GetUserInquiriesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetUserInquiriesCopyWith<$Res> {
  factory $GetUserInquiriesCopyWith(
          GetUserInquiries value, $Res Function(GetUserInquiries) then) =
      _$GetUserInquiriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserInquiriesCopyWithImpl<$Res>
    implements $GetUserInquiriesCopyWith<$Res> {
  _$GetUserInquiriesCopyWithImpl(this._value, this._then);

  final GetUserInquiries _value;
  // ignore: unused_field
  final $Res Function(GetUserInquiries) _then;
}

/// @nodoc
abstract class $GetUserInquiries$CopyWith<$Res> {
  factory $GetUserInquiries$CopyWith(
          GetUserInquiries$ value, $Res Function(GetUserInquiries$) then) =
      _$GetUserInquiries$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserInquiries$CopyWithImpl<$Res>
    extends _$GetUserInquiriesCopyWithImpl<$Res>
    implements $GetUserInquiries$CopyWith<$Res> {
  _$GetUserInquiries$CopyWithImpl(
      GetUserInquiries$ _value, $Res Function(GetUserInquiries$) _then)
      : super(_value, (v) => _then(v as GetUserInquiries$));

  @override
  GetUserInquiries$ get _value => super._value as GetUserInquiries$;
}

/// @nodoc
class _$GetUserInquiries$ implements GetUserInquiries$ {
  const _$GetUserInquiries$();

  @override
  String toString() {
    return 'GetUserInquiries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUserInquiries$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Inquiry> inquiries),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Inquiry> inquiries),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    @required Result successful(GetUserInquiriesSuccessful value),
    @required Result error(GetUserInquiriesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    Result successful(GetUserInquiriesSuccessful value),
    Result error(GetUserInquiriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUserInquiries$ implements GetUserInquiries {
  const factory GetUserInquiries$() = _$GetUserInquiries$;
}

/// @nodoc
abstract class $GetUserInquiriesSuccessfulCopyWith<$Res> {
  factory $GetUserInquiriesSuccessfulCopyWith(GetUserInquiriesSuccessful value,
          $Res Function(GetUserInquiriesSuccessful) then) =
      _$GetUserInquiriesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Inquiry> inquiries});
}

/// @nodoc
class _$GetUserInquiriesSuccessfulCopyWithImpl<$Res>
    extends _$GetUserInquiriesCopyWithImpl<$Res>
    implements $GetUserInquiriesSuccessfulCopyWith<$Res> {
  _$GetUserInquiriesSuccessfulCopyWithImpl(GetUserInquiriesSuccessful _value,
      $Res Function(GetUserInquiriesSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserInquiriesSuccessful));

  @override
  GetUserInquiriesSuccessful get _value =>
      super._value as GetUserInquiriesSuccessful;

  @override
  $Res call({
    Object inquiries = freezed,
  }) {
    return _then(GetUserInquiriesSuccessful(
      inquiries == freezed ? _value.inquiries : inquiries as List<Inquiry>,
    ));
  }
}

/// @nodoc
class _$GetUserInquiriesSuccessful implements GetUserInquiriesSuccessful {
  const _$GetUserInquiriesSuccessful(this.inquiries)
      : assert(inquiries != null);

  @override
  final List<Inquiry> inquiries;

  @override
  String toString() {
    return 'GetUserInquiries.successful(inquiries: $inquiries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserInquiriesSuccessful &&
            (identical(other.inquiries, inquiries) ||
                const DeepCollectionEquality()
                    .equals(other.inquiries, inquiries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inquiries);

  @override
  $GetUserInquiriesSuccessfulCopyWith<GetUserInquiriesSuccessful>
      get copyWith =>
          _$GetUserInquiriesSuccessfulCopyWithImpl<GetUserInquiriesSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Inquiry> inquiries),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(inquiries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Inquiry> inquiries),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(inquiries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    @required Result successful(GetUserInquiriesSuccessful value),
    @required Result error(GetUserInquiriesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    Result successful(GetUserInquiriesSuccessful value),
    Result error(GetUserInquiriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserInquiriesSuccessful implements GetUserInquiries {
  const factory GetUserInquiriesSuccessful(List<Inquiry> inquiries) =
      _$GetUserInquiriesSuccessful;

  List<Inquiry> get inquiries;
  $GetUserInquiriesSuccessfulCopyWith<GetUserInquiriesSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetUserInquiriesErrorCopyWith<$Res> {
  factory $GetUserInquiriesErrorCopyWith(GetUserInquiriesError value,
          $Res Function(GetUserInquiriesError) then) =
      _$GetUserInquiriesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetUserInquiriesErrorCopyWithImpl<$Res>
    extends _$GetUserInquiriesCopyWithImpl<$Res>
    implements $GetUserInquiriesErrorCopyWith<$Res> {
  _$GetUserInquiriesErrorCopyWithImpl(
      GetUserInquiriesError _value, $Res Function(GetUserInquiriesError) _then)
      : super(_value, (v) => _then(v as GetUserInquiriesError));

  @override
  GetUserInquiriesError get _value => super._value as GetUserInquiriesError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetUserInquiriesError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetUserInquiriesError implements GetUserInquiriesError {
  const _$GetUserInquiriesError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetUserInquiries.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserInquiriesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetUserInquiriesErrorCopyWith<GetUserInquiriesError> get copyWith =>
      _$GetUserInquiriesErrorCopyWithImpl<GetUserInquiriesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Inquiry> inquiries),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Inquiry> inquiries),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    @required Result successful(GetUserInquiriesSuccessful value),
    @required Result error(GetUserInquiriesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserInquiries$ value), {
    Result successful(GetUserInquiriesSuccessful value),
    Result error(GetUserInquiriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserInquiriesError implements GetUserInquiries, ErrorAction {
  const factory GetUserInquiriesError(Object error) = _$GetUserInquiriesError;

  Object get error;
  $GetUserInquiriesErrorCopyWith<GetUserInquiriesError> get copyWith;
}
