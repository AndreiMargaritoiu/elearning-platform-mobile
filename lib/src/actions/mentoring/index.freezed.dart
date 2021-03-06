// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of mentoring_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddMentorshipTearOff {
  const _$AddMentorshipTearOff();

// ignore: unused_element
  AddMentorship$ call() {
    return const AddMentorship$();
  }

// ignore: unused_element
  AddMentorshipSuccessful successful(Mentorship mentorship) {
    return AddMentorshipSuccessful(
      mentorship,
    );
  }

// ignore: unused_element
  AddMentorshipError error(Object error) {
    return AddMentorshipError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddMentorship = _$AddMentorshipTearOff();

/// @nodoc
mixin _$AddMentorship {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddMentorship$ value), {
    @required Result successful(AddMentorshipSuccessful value),
    @required Result error(AddMentorshipError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddMentorship$ value), {
    Result successful(AddMentorshipSuccessful value),
    Result error(AddMentorshipError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AddMentorshipCopyWith<$Res> {
  factory $AddMentorshipCopyWith(
          AddMentorship value, $Res Function(AddMentorship) then) =
      _$AddMentorshipCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddMentorshipCopyWithImpl<$Res>
    implements $AddMentorshipCopyWith<$Res> {
  _$AddMentorshipCopyWithImpl(this._value, this._then);

  final AddMentorship _value;
  // ignore: unused_field
  final $Res Function(AddMentorship) _then;
}

/// @nodoc
abstract class $AddMentorship$CopyWith<$Res> {
  factory $AddMentorship$CopyWith(
          AddMentorship$ value, $Res Function(AddMentorship$) then) =
      _$AddMentorship$CopyWithImpl<$Res>;
}

/// @nodoc
class _$AddMentorship$CopyWithImpl<$Res>
    extends _$AddMentorshipCopyWithImpl<$Res>
    implements $AddMentorship$CopyWith<$Res> {
  _$AddMentorship$CopyWithImpl(
      AddMentorship$ _value, $Res Function(AddMentorship$) _then)
      : super(_value, (v) => _then(v as AddMentorship$));

  @override
  AddMentorship$ get _value => super._value as AddMentorship$;
}

/// @nodoc
class _$AddMentorship$ implements AddMentorship$ {
  const _$AddMentorship$();

  @override
  String toString() {
    return 'AddMentorship()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddMentorship$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Mentorship mentorship),
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
    Result successful(Mentorship mentorship),
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
    Result $default(AddMentorship$ value), {
    @required Result successful(AddMentorshipSuccessful value),
    @required Result error(AddMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddMentorship$ value), {
    Result successful(AddMentorshipSuccessful value),
    Result error(AddMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddMentorship$ implements AddMentorship {
  const factory AddMentorship$() = _$AddMentorship$;
}

/// @nodoc
abstract class $AddMentorshipSuccessfulCopyWith<$Res> {
  factory $AddMentorshipSuccessfulCopyWith(AddMentorshipSuccessful value,
          $Res Function(AddMentorshipSuccessful) then) =
      _$AddMentorshipSuccessfulCopyWithImpl<$Res>;
  $Res call({Mentorship mentorship});
}

/// @nodoc
class _$AddMentorshipSuccessfulCopyWithImpl<$Res>
    extends _$AddMentorshipCopyWithImpl<$Res>
    implements $AddMentorshipSuccessfulCopyWith<$Res> {
  _$AddMentorshipSuccessfulCopyWithImpl(AddMentorshipSuccessful _value,
      $Res Function(AddMentorshipSuccessful) _then)
      : super(_value, (v) => _then(v as AddMentorshipSuccessful));

  @override
  AddMentorshipSuccessful get _value => super._value as AddMentorshipSuccessful;

  @override
  $Res call({
    Object mentorship = freezed,
  }) {
    return _then(AddMentorshipSuccessful(
      mentorship == freezed ? _value.mentorship : mentorship as Mentorship,
    ));
  }
}

/// @nodoc
class _$AddMentorshipSuccessful implements AddMentorshipSuccessful {
  const _$AddMentorshipSuccessful(this.mentorship) : assert(mentorship != null);

  @override
  final Mentorship mentorship;

  @override
  String toString() {
    return 'AddMentorship.successful(mentorship: $mentorship)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddMentorshipSuccessful &&
            (identical(other.mentorship, mentorship) ||
                const DeepCollectionEquality()
                    .equals(other.mentorship, mentorship)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentorship);

  @override
  $AddMentorshipSuccessfulCopyWith<AddMentorshipSuccessful> get copyWith =>
      _$AddMentorshipSuccessfulCopyWithImpl<AddMentorshipSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(mentorship);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(mentorship);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddMentorship$ value), {
    @required Result successful(AddMentorshipSuccessful value),
    @required Result error(AddMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddMentorship$ value), {
    Result successful(AddMentorshipSuccessful value),
    Result error(AddMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddMentorshipSuccessful implements AddMentorship {
  const factory AddMentorshipSuccessful(Mentorship mentorship) =
      _$AddMentorshipSuccessful;

  Mentorship get mentorship;
  $AddMentorshipSuccessfulCopyWith<AddMentorshipSuccessful> get copyWith;
}

/// @nodoc
abstract class $AddMentorshipErrorCopyWith<$Res> {
  factory $AddMentorshipErrorCopyWith(
          AddMentorshipError value, $Res Function(AddMentorshipError) then) =
      _$AddMentorshipErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$AddMentorshipErrorCopyWithImpl<$Res>
    extends _$AddMentorshipCopyWithImpl<$Res>
    implements $AddMentorshipErrorCopyWith<$Res> {
  _$AddMentorshipErrorCopyWithImpl(
      AddMentorshipError _value, $Res Function(AddMentorshipError) _then)
      : super(_value, (v) => _then(v as AddMentorshipError));

  @override
  AddMentorshipError get _value => super._value as AddMentorshipError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(AddMentorshipError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$AddMentorshipError implements AddMentorshipError {
  const _$AddMentorshipError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'AddMentorship.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddMentorshipError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $AddMentorshipErrorCopyWith<AddMentorshipError> get copyWith =>
      _$AddMentorshipErrorCopyWithImpl<AddMentorshipError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Mentorship mentorship),
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
    Result successful(Mentorship mentorship),
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
    Result $default(AddMentorship$ value), {
    @required Result successful(AddMentorshipSuccessful value),
    @required Result error(AddMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddMentorship$ value), {
    Result successful(AddMentorshipSuccessful value),
    Result error(AddMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddMentorshipError implements AddMentorship, ErrorAction {
  const factory AddMentorshipError(Object error) = _$AddMentorshipError;

  Object get error;
  $AddMentorshipErrorCopyWith<AddMentorshipError> get copyWith;
}

/// @nodoc
class _$GetMentorshipByIdTearOff {
  const _$GetMentorshipByIdTearOff();

// ignore: unused_element
  GetMentorshipById$ call(String id) {
    return GetMentorshipById$(
      id,
    );
  }

// ignore: unused_element
  GetMentorshipByIdSuccessful successful(Mentorship mentorship) {
    return GetMentorshipByIdSuccessful(
      mentorship,
    );
  }

// ignore: unused_element
  GetMentorshipByIdError error(Object error) {
    return GetMentorshipByIdError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetMentorshipById = _$GetMentorshipByIdTearOff();

/// @nodoc
mixin _$GetMentorshipById {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    @required Result successful(GetMentorshipByIdSuccessful value),
    @required Result error(GetMentorshipByIdError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    Result successful(GetMentorshipByIdSuccessful value),
    Result error(GetMentorshipByIdError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetMentorshipByIdCopyWith<$Res> {
  factory $GetMentorshipByIdCopyWith(
          GetMentorshipById value, $Res Function(GetMentorshipById) then) =
      _$GetMentorshipByIdCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMentorshipByIdCopyWithImpl<$Res>
    implements $GetMentorshipByIdCopyWith<$Res> {
  _$GetMentorshipByIdCopyWithImpl(this._value, this._then);

  final GetMentorshipById _value;
  // ignore: unused_field
  final $Res Function(GetMentorshipById) _then;
}

/// @nodoc
abstract class $GetMentorshipById$CopyWith<$Res> {
  factory $GetMentorshipById$CopyWith(
          GetMentorshipById$ value, $Res Function(GetMentorshipById$) then) =
      _$GetMentorshipById$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetMentorshipById$CopyWithImpl<$Res>
    extends _$GetMentorshipByIdCopyWithImpl<$Res>
    implements $GetMentorshipById$CopyWith<$Res> {
  _$GetMentorshipById$CopyWithImpl(
      GetMentorshipById$ _value, $Res Function(GetMentorshipById$) _then)
      : super(_value, (v) => _then(v as GetMentorshipById$));

  @override
  GetMentorshipById$ get _value => super._value as GetMentorshipById$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetMentorshipById$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetMentorshipById$ implements GetMentorshipById$ {
  const _$GetMentorshipById$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'GetMentorshipById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMentorshipById$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetMentorshipById$CopyWith<GetMentorshipById$> get copyWith =>
      _$GetMentorshipById$CopyWithImpl<GetMentorshipById$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    @required Result successful(GetMentorshipByIdSuccessful value),
    @required Result error(GetMentorshipByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    Result successful(GetMentorshipByIdSuccessful value),
    Result error(GetMentorshipByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMentorshipById$ implements GetMentorshipById {
  const factory GetMentorshipById$(String id) = _$GetMentorshipById$;

  String get id;
  $GetMentorshipById$CopyWith<GetMentorshipById$> get copyWith;
}

/// @nodoc
abstract class $GetMentorshipByIdSuccessfulCopyWith<$Res> {
  factory $GetMentorshipByIdSuccessfulCopyWith(
          GetMentorshipByIdSuccessful value,
          $Res Function(GetMentorshipByIdSuccessful) then) =
      _$GetMentorshipByIdSuccessfulCopyWithImpl<$Res>;
  $Res call({Mentorship mentorship});
}

/// @nodoc
class _$GetMentorshipByIdSuccessfulCopyWithImpl<$Res>
    extends _$GetMentorshipByIdCopyWithImpl<$Res>
    implements $GetMentorshipByIdSuccessfulCopyWith<$Res> {
  _$GetMentorshipByIdSuccessfulCopyWithImpl(GetMentorshipByIdSuccessful _value,
      $Res Function(GetMentorshipByIdSuccessful) _then)
      : super(_value, (v) => _then(v as GetMentorshipByIdSuccessful));

  @override
  GetMentorshipByIdSuccessful get _value =>
      super._value as GetMentorshipByIdSuccessful;

  @override
  $Res call({
    Object mentorship = freezed,
  }) {
    return _then(GetMentorshipByIdSuccessful(
      mentorship == freezed ? _value.mentorship : mentorship as Mentorship,
    ));
  }
}

/// @nodoc
class _$GetMentorshipByIdSuccessful implements GetMentorshipByIdSuccessful {
  const _$GetMentorshipByIdSuccessful(this.mentorship)
      : assert(mentorship != null);

  @override
  final Mentorship mentorship;

  @override
  String toString() {
    return 'GetMentorshipById.successful(mentorship: $mentorship)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMentorshipByIdSuccessful &&
            (identical(other.mentorship, mentorship) ||
                const DeepCollectionEquality()
                    .equals(other.mentorship, mentorship)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentorship);

  @override
  $GetMentorshipByIdSuccessfulCopyWith<GetMentorshipByIdSuccessful>
      get copyWith => _$GetMentorshipByIdSuccessfulCopyWithImpl<
          GetMentorshipByIdSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(mentorship);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(mentorship);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    @required Result successful(GetMentorshipByIdSuccessful value),
    @required Result error(GetMentorshipByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    Result successful(GetMentorshipByIdSuccessful value),
    Result error(GetMentorshipByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMentorshipByIdSuccessful implements GetMentorshipById {
  const factory GetMentorshipByIdSuccessful(Mentorship mentorship) =
      _$GetMentorshipByIdSuccessful;

  Mentorship get mentorship;
  $GetMentorshipByIdSuccessfulCopyWith<GetMentorshipByIdSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetMentorshipByIdErrorCopyWith<$Res> {
  factory $GetMentorshipByIdErrorCopyWith(GetMentorshipByIdError value,
          $Res Function(GetMentorshipByIdError) then) =
      _$GetMentorshipByIdErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetMentorshipByIdErrorCopyWithImpl<$Res>
    extends _$GetMentorshipByIdCopyWithImpl<$Res>
    implements $GetMentorshipByIdErrorCopyWith<$Res> {
  _$GetMentorshipByIdErrorCopyWithImpl(GetMentorshipByIdError _value,
      $Res Function(GetMentorshipByIdError) _then)
      : super(_value, (v) => _then(v as GetMentorshipByIdError));

  @override
  GetMentorshipByIdError get _value => super._value as GetMentorshipByIdError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetMentorshipByIdError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetMentorshipByIdError implements GetMentorshipByIdError {
  const _$GetMentorshipByIdError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetMentorshipById.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMentorshipByIdError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetMentorshipByIdErrorCopyWith<GetMentorshipByIdError> get copyWith =>
      _$GetMentorshipByIdErrorCopyWithImpl<GetMentorshipByIdError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
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
    Result $default(String id), {
    Result successful(Mentorship mentorship),
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
    Result $default(GetMentorshipById$ value), {
    @required Result successful(GetMentorshipByIdSuccessful value),
    @required Result error(GetMentorshipByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorshipById$ value), {
    Result successful(GetMentorshipByIdSuccessful value),
    Result error(GetMentorshipByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMentorshipByIdError
    implements GetMentorshipById, ErrorAction {
  const factory GetMentorshipByIdError(Object error) = _$GetMentorshipByIdError;

  Object get error;
  $GetMentorshipByIdErrorCopyWith<GetMentorshipByIdError> get copyWith;
}

/// @nodoc
class _$UpdateMentorshipTearOff {
  const _$UpdateMentorshipTearOff();

// ignore: unused_element
  UpdateMentorship$ call(String id) {
    return UpdateMentorship$(
      id,
    );
  }

// ignore: unused_element
  UpdateMentorshipSuccessful successful(Mentorship mentorship) {
    return UpdateMentorshipSuccessful(
      mentorship,
    );
  }

// ignore: unused_element
  UpdateMentorshipError error(Object error) {
    return UpdateMentorshipError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateMentorship = _$UpdateMentorshipTearOff();

/// @nodoc
mixin _$UpdateMentorship {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    @required Result successful(UpdateMentorshipSuccessful value),
    @required Result error(UpdateMentorshipError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    Result successful(UpdateMentorshipSuccessful value),
    Result error(UpdateMentorshipError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateMentorshipCopyWith<$Res> {
  factory $UpdateMentorshipCopyWith(
          UpdateMentorship value, $Res Function(UpdateMentorship) then) =
      _$UpdateMentorshipCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateMentorshipCopyWithImpl<$Res>
    implements $UpdateMentorshipCopyWith<$Res> {
  _$UpdateMentorshipCopyWithImpl(this._value, this._then);

  final UpdateMentorship _value;
  // ignore: unused_field
  final $Res Function(UpdateMentorship) _then;
}

/// @nodoc
abstract class $UpdateMentorship$CopyWith<$Res> {
  factory $UpdateMentorship$CopyWith(
          UpdateMentorship$ value, $Res Function(UpdateMentorship$) then) =
      _$UpdateMentorship$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UpdateMentorship$CopyWithImpl<$Res>
    extends _$UpdateMentorshipCopyWithImpl<$Res>
    implements $UpdateMentorship$CopyWith<$Res> {
  _$UpdateMentorship$CopyWithImpl(
      UpdateMentorship$ _value, $Res Function(UpdateMentorship$) _then)
      : super(_value, (v) => _then(v as UpdateMentorship$));

  @override
  UpdateMentorship$ get _value => super._value as UpdateMentorship$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(UpdateMentorship$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$UpdateMentorship$ implements UpdateMentorship$ {
  const _$UpdateMentorship$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'UpdateMentorship(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMentorship$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $UpdateMentorship$CopyWith<UpdateMentorship$> get copyWith =>
      _$UpdateMentorship$CopyWithImpl<UpdateMentorship$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    @required Result successful(UpdateMentorshipSuccessful value),
    @required Result error(UpdateMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    Result successful(UpdateMentorshipSuccessful value),
    Result error(UpdateMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateMentorship$ implements UpdateMentorship {
  const factory UpdateMentorship$(String id) = _$UpdateMentorship$;

  String get id;
  $UpdateMentorship$CopyWith<UpdateMentorship$> get copyWith;
}

/// @nodoc
abstract class $UpdateMentorshipSuccessfulCopyWith<$Res> {
  factory $UpdateMentorshipSuccessfulCopyWith(UpdateMentorshipSuccessful value,
          $Res Function(UpdateMentorshipSuccessful) then) =
      _$UpdateMentorshipSuccessfulCopyWithImpl<$Res>;
  $Res call({Mentorship mentorship});
}

/// @nodoc
class _$UpdateMentorshipSuccessfulCopyWithImpl<$Res>
    extends _$UpdateMentorshipCopyWithImpl<$Res>
    implements $UpdateMentorshipSuccessfulCopyWith<$Res> {
  _$UpdateMentorshipSuccessfulCopyWithImpl(UpdateMentorshipSuccessful _value,
      $Res Function(UpdateMentorshipSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateMentorshipSuccessful));

  @override
  UpdateMentorshipSuccessful get _value =>
      super._value as UpdateMentorshipSuccessful;

  @override
  $Res call({
    Object mentorship = freezed,
  }) {
    return _then(UpdateMentorshipSuccessful(
      mentorship == freezed ? _value.mentorship : mentorship as Mentorship,
    ));
  }
}

/// @nodoc
class _$UpdateMentorshipSuccessful implements UpdateMentorshipSuccessful {
  const _$UpdateMentorshipSuccessful(this.mentorship)
      : assert(mentorship != null);

  @override
  final Mentorship mentorship;

  @override
  String toString() {
    return 'UpdateMentorship.successful(mentorship: $mentorship)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMentorshipSuccessful &&
            (identical(other.mentorship, mentorship) ||
                const DeepCollectionEquality()
                    .equals(other.mentorship, mentorship)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentorship);

  @override
  $UpdateMentorshipSuccessfulCopyWith<UpdateMentorshipSuccessful>
      get copyWith =>
          _$UpdateMentorshipSuccessfulCopyWithImpl<UpdateMentorshipSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(mentorship);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Mentorship mentorship),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(mentorship);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    @required Result successful(UpdateMentorshipSuccessful value),
    @required Result error(UpdateMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    Result successful(UpdateMentorshipSuccessful value),
    Result error(UpdateMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateMentorshipSuccessful implements UpdateMentorship {
  const factory UpdateMentorshipSuccessful(Mentorship mentorship) =
      _$UpdateMentorshipSuccessful;

  Mentorship get mentorship;
  $UpdateMentorshipSuccessfulCopyWith<UpdateMentorshipSuccessful> get copyWith;
}

/// @nodoc
abstract class $UpdateMentorshipErrorCopyWith<$Res> {
  factory $UpdateMentorshipErrorCopyWith(UpdateMentorshipError value,
          $Res Function(UpdateMentorshipError) then) =
      _$UpdateMentorshipErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateMentorshipErrorCopyWithImpl<$Res>
    extends _$UpdateMentorshipCopyWithImpl<$Res>
    implements $UpdateMentorshipErrorCopyWith<$Res> {
  _$UpdateMentorshipErrorCopyWithImpl(
      UpdateMentorshipError _value, $Res Function(UpdateMentorshipError) _then)
      : super(_value, (v) => _then(v as UpdateMentorshipError));

  @override
  UpdateMentorshipError get _value => super._value as UpdateMentorshipError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateMentorshipError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateMentorshipError implements UpdateMentorshipError {
  const _$UpdateMentorshipError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateMentorship.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMentorshipError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateMentorshipErrorCopyWith<UpdateMentorshipError> get copyWith =>
      _$UpdateMentorshipErrorCopyWithImpl<UpdateMentorshipError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Mentorship mentorship),
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
    Result $default(String id), {
    Result successful(Mentorship mentorship),
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
    Result $default(UpdateMentorship$ value), {
    @required Result successful(UpdateMentorshipSuccessful value),
    @required Result error(UpdateMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateMentorship$ value), {
    Result successful(UpdateMentorshipSuccessful value),
    Result error(UpdateMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateMentorshipError implements UpdateMentorship, ErrorAction {
  const factory UpdateMentorshipError(Object error) = _$UpdateMentorshipError;

  Object get error;
  $UpdateMentorshipErrorCopyWith<UpdateMentorshipError> get copyWith;
}

/// @nodoc
class _$DeleteMentorshipTearOff {
  const _$DeleteMentorshipTearOff();

// ignore: unused_element
  DeleteMentorship$ call(String id) {
    return DeleteMentorship$(
      id,
    );
  }

// ignore: unused_element
  DeleteMentorshipSuccessful successful(String id) {
    return DeleteMentorshipSuccessful(
      id,
    );
  }

// ignore: unused_element
  DeleteMentorshipError error(Object error) {
    return DeleteMentorshipError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeleteMentorship = _$DeleteMentorshipTearOff();

/// @nodoc
mixin _$DeleteMentorship {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(String id),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(String id),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    @required Result successful(DeleteMentorshipSuccessful value),
    @required Result error(DeleteMentorshipError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    Result successful(DeleteMentorshipSuccessful value),
    Result error(DeleteMentorshipError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DeleteMentorshipCopyWith<$Res> {
  factory $DeleteMentorshipCopyWith(
          DeleteMentorship value, $Res Function(DeleteMentorship) then) =
      _$DeleteMentorshipCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteMentorshipCopyWithImpl<$Res>
    implements $DeleteMentorshipCopyWith<$Res> {
  _$DeleteMentorshipCopyWithImpl(this._value, this._then);

  final DeleteMentorship _value;
  // ignore: unused_field
  final $Res Function(DeleteMentorship) _then;
}

/// @nodoc
abstract class $DeleteMentorship$CopyWith<$Res> {
  factory $DeleteMentorship$CopyWith(
          DeleteMentorship$ value, $Res Function(DeleteMentorship$) then) =
      _$DeleteMentorship$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeleteMentorship$CopyWithImpl<$Res>
    extends _$DeleteMentorshipCopyWithImpl<$Res>
    implements $DeleteMentorship$CopyWith<$Res> {
  _$DeleteMentorship$CopyWithImpl(
      DeleteMentorship$ _value, $Res Function(DeleteMentorship$) _then)
      : super(_value, (v) => _then(v as DeleteMentorship$));

  @override
  DeleteMentorship$ get _value => super._value as DeleteMentorship$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(DeleteMentorship$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$DeleteMentorship$ implements DeleteMentorship$ {
  const _$DeleteMentorship$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'DeleteMentorship(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteMentorship$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $DeleteMentorship$CopyWith<DeleteMentorship$> get copyWith =>
      _$DeleteMentorship$CopyWithImpl<DeleteMentorship$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(String id),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(String id),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    @required Result successful(DeleteMentorshipSuccessful value),
    @required Result error(DeleteMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    Result successful(DeleteMentorshipSuccessful value),
    Result error(DeleteMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DeleteMentorship$ implements DeleteMentorship {
  const factory DeleteMentorship$(String id) = _$DeleteMentorship$;

  String get id;
  $DeleteMentorship$CopyWith<DeleteMentorship$> get copyWith;
}

/// @nodoc
abstract class $DeleteMentorshipSuccessfulCopyWith<$Res> {
  factory $DeleteMentorshipSuccessfulCopyWith(DeleteMentorshipSuccessful value,
          $Res Function(DeleteMentorshipSuccessful) then) =
      _$DeleteMentorshipSuccessfulCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeleteMentorshipSuccessfulCopyWithImpl<$Res>
    extends _$DeleteMentorshipCopyWithImpl<$Res>
    implements $DeleteMentorshipSuccessfulCopyWith<$Res> {
  _$DeleteMentorshipSuccessfulCopyWithImpl(DeleteMentorshipSuccessful _value,
      $Res Function(DeleteMentorshipSuccessful) _then)
      : super(_value, (v) => _then(v as DeleteMentorshipSuccessful));

  @override
  DeleteMentorshipSuccessful get _value =>
      super._value as DeleteMentorshipSuccessful;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(DeleteMentorshipSuccessful(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$DeleteMentorshipSuccessful implements DeleteMentorshipSuccessful {
  const _$DeleteMentorshipSuccessful(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'DeleteMentorship.successful(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteMentorshipSuccessful &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $DeleteMentorshipSuccessfulCopyWith<DeleteMentorshipSuccessful>
      get copyWith =>
          _$DeleteMentorshipSuccessfulCopyWithImpl<DeleteMentorshipSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(String id),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(String id),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    @required Result successful(DeleteMentorshipSuccessful value),
    @required Result error(DeleteMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    Result successful(DeleteMentorshipSuccessful value),
    Result error(DeleteMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class DeleteMentorshipSuccessful implements DeleteMentorship {
  const factory DeleteMentorshipSuccessful(String id) =
      _$DeleteMentorshipSuccessful;

  String get id;
  $DeleteMentorshipSuccessfulCopyWith<DeleteMentorshipSuccessful> get copyWith;
}

/// @nodoc
abstract class $DeleteMentorshipErrorCopyWith<$Res> {
  factory $DeleteMentorshipErrorCopyWith(DeleteMentorshipError value,
          $Res Function(DeleteMentorshipError) then) =
      _$DeleteMentorshipErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$DeleteMentorshipErrorCopyWithImpl<$Res>
    extends _$DeleteMentorshipCopyWithImpl<$Res>
    implements $DeleteMentorshipErrorCopyWith<$Res> {
  _$DeleteMentorshipErrorCopyWithImpl(
      DeleteMentorshipError _value, $Res Function(DeleteMentorshipError) _then)
      : super(_value, (v) => _then(v as DeleteMentorshipError));

  @override
  DeleteMentorshipError get _value => super._value as DeleteMentorshipError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(DeleteMentorshipError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$DeleteMentorshipError implements DeleteMentorshipError {
  const _$DeleteMentorshipError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'DeleteMentorship.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteMentorshipError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $DeleteMentorshipErrorCopyWith<DeleteMentorshipError> get copyWith =>
      _$DeleteMentorshipErrorCopyWithImpl<DeleteMentorshipError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(String id),
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
    Result $default(String id), {
    Result successful(String id),
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
    Result $default(DeleteMentorship$ value), {
    @required Result successful(DeleteMentorshipSuccessful value),
    @required Result error(DeleteMentorshipError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteMentorship$ value), {
    Result successful(DeleteMentorshipSuccessful value),
    Result error(DeleteMentorshipError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteMentorshipError implements DeleteMentorship, ErrorAction {
  const factory DeleteMentorshipError(Object error) = _$DeleteMentorshipError;

  Object get error;
  $DeleteMentorshipErrorCopyWith<DeleteMentorshipError> get copyWith;
}

/// @nodoc
class _$UpdateMentorshipInfoTearOff {
  const _$UpdateMentorshipInfoTearOff();

// ignore: unused_element
  UpdateMentorshipInfo$ call({String description, String category, int price}) {
    return UpdateMentorshipInfo$(
      description: description,
      category: category,
      price: price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateMentorshipInfo = _$UpdateMentorshipInfoTearOff();

/// @nodoc
mixin _$UpdateMentorshipInfo {
  String get description;
  String get category;
  int get price;

  $UpdateMentorshipInfoCopyWith<UpdateMentorshipInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateMentorshipInfoCopyWith<$Res> {
  factory $UpdateMentorshipInfoCopyWith(UpdateMentorshipInfo value,
          $Res Function(UpdateMentorshipInfo) then) =
      _$UpdateMentorshipInfoCopyWithImpl<$Res>;
  $Res call({String description, String category, int price});
}

/// @nodoc
class _$UpdateMentorshipInfoCopyWithImpl<$Res>
    implements $UpdateMentorshipInfoCopyWith<$Res> {
  _$UpdateMentorshipInfoCopyWithImpl(this._value, this._then);

  final UpdateMentorshipInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateMentorshipInfo) _then;

  @override
  $Res call({
    Object description = freezed,
    Object category = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
      category: category == freezed ? _value.category : category as String,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

/// @nodoc
abstract class $UpdateMentorshipInfo$CopyWith<$Res>
    implements $UpdateMentorshipInfoCopyWith<$Res> {
  factory $UpdateMentorshipInfo$CopyWith(UpdateMentorshipInfo$ value,
          $Res Function(UpdateMentorshipInfo$) then) =
      _$UpdateMentorshipInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String description, String category, int price});
}

/// @nodoc
class _$UpdateMentorshipInfo$CopyWithImpl<$Res>
    extends _$UpdateMentorshipInfoCopyWithImpl<$Res>
    implements $UpdateMentorshipInfo$CopyWith<$Res> {
  _$UpdateMentorshipInfo$CopyWithImpl(
      UpdateMentorshipInfo$ _value, $Res Function(UpdateMentorshipInfo$) _then)
      : super(_value, (v) => _then(v as UpdateMentorshipInfo$));

  @override
  UpdateMentorshipInfo$ get _value => super._value as UpdateMentorshipInfo$;

  @override
  $Res call({
    Object description = freezed,
    Object category = freezed,
    Object price = freezed,
  }) {
    return _then(UpdateMentorshipInfo$(
      description:
          description == freezed ? _value.description : description as String,
      category: category == freezed ? _value.category : category as String,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

/// @nodoc
class _$UpdateMentorshipInfo$ implements UpdateMentorshipInfo$ {
  const _$UpdateMentorshipInfo$({this.description, this.category, this.price});

  @override
  final String description;
  @override
  final String category;
  @override
  final int price;

  @override
  String toString() {
    return 'UpdateMentorshipInfo(description: $description, category: $category, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMentorshipInfo$ &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(price);

  @override
  $UpdateMentorshipInfo$CopyWith<UpdateMentorshipInfo$> get copyWith =>
      _$UpdateMentorshipInfo$CopyWithImpl<UpdateMentorshipInfo$>(
          this, _$identity);
}

abstract class UpdateMentorshipInfo$ implements UpdateMentorshipInfo {
  const factory UpdateMentorshipInfo$(
      {String description,
      String category,
      int price}) = _$UpdateMentorshipInfo$;

  @override
  String get description;
  @override
  String get category;
  @override
  int get price;
  @override
  $UpdateMentorshipInfo$CopyWith<UpdateMentorshipInfo$> get copyWith;
}

/// @nodoc
class _$GetMentorshipsTearOff {
  const _$GetMentorshipsTearOff();

// ignore: unused_element
  GetMentorships$ call({String userId, List<String> category}) {
    return GetMentorships$(
      userId: userId,
      category: category,
    );
  }

// ignore: unused_element
  GetMentorshipsSuccessful successful(List<Mentorship> mentorships) {
    return GetMentorshipsSuccessful(
      mentorships,
    );
  }

// ignore: unused_element
  GetMentorshipsError error(Object error) {
    return GetMentorshipsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetMentorships = _$GetMentorshipsTearOff();

/// @nodoc
mixin _$GetMentorships {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, List<String> category), {
    @required Result successful(List<Mentorship> mentorships),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String userId, List<String> category), {
    Result successful(List<Mentorship> mentorships),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMentorships$ value), {
    @required Result successful(GetMentorshipsSuccessful value),
    @required Result error(GetMentorshipsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorships$ value), {
    Result successful(GetMentorshipsSuccessful value),
    Result error(GetMentorshipsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetMentorshipsCopyWith<$Res> {
  factory $GetMentorshipsCopyWith(
          GetMentorships value, $Res Function(GetMentorships) then) =
      _$GetMentorshipsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMentorshipsCopyWithImpl<$Res>
    implements $GetMentorshipsCopyWith<$Res> {
  _$GetMentorshipsCopyWithImpl(this._value, this._then);

  final GetMentorships _value;
  // ignore: unused_field
  final $Res Function(GetMentorships) _then;
}

/// @nodoc
abstract class $GetMentorships$CopyWith<$Res> {
  factory $GetMentorships$CopyWith(
          GetMentorships$ value, $Res Function(GetMentorships$) then) =
      _$GetMentorships$CopyWithImpl<$Res>;
  $Res call({String userId, List<String> category});
}

/// @nodoc
class _$GetMentorships$CopyWithImpl<$Res>
    extends _$GetMentorshipsCopyWithImpl<$Res>
    implements $GetMentorships$CopyWith<$Res> {
  _$GetMentorships$CopyWithImpl(
      GetMentorships$ _value, $Res Function(GetMentorships$) _then)
      : super(_value, (v) => _then(v as GetMentorships$));

  @override
  GetMentorships$ get _value => super._value as GetMentorships$;

  @override
  $Res call({
    Object userId = freezed,
    Object category = freezed,
  }) {
    return _then(GetMentorships$(
      userId: userId == freezed ? _value.userId : userId as String,
      category:
          category == freezed ? _value.category : category as List<String>,
    ));
  }
}

/// @nodoc
class _$GetMentorships$ implements GetMentorships$ {
  const _$GetMentorships$({this.userId, this.category});

  @override
  final String userId;
  @override
  final List<String> category;

  @override
  String toString() {
    return 'GetMentorships(userId: $userId, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMentorships$ &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(category);

  @override
  $GetMentorships$CopyWith<GetMentorships$> get copyWith =>
      _$GetMentorships$CopyWithImpl<GetMentorships$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, List<String> category), {
    @required Result successful(List<Mentorship> mentorships),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(userId, category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String userId, List<String> category), {
    Result successful(List<Mentorship> mentorships),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(userId, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMentorships$ value), {
    @required Result successful(GetMentorshipsSuccessful value),
    @required Result error(GetMentorshipsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorships$ value), {
    Result successful(GetMentorshipsSuccessful value),
    Result error(GetMentorshipsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMentorships$ implements GetMentorships {
  const factory GetMentorships$({String userId, List<String> category}) =
      _$GetMentorships$;

  String get userId;
  List<String> get category;
  $GetMentorships$CopyWith<GetMentorships$> get copyWith;
}

/// @nodoc
abstract class $GetMentorshipsSuccessfulCopyWith<$Res> {
  factory $GetMentorshipsSuccessfulCopyWith(GetMentorshipsSuccessful value,
          $Res Function(GetMentorshipsSuccessful) then) =
      _$GetMentorshipsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Mentorship> mentorships});
}

/// @nodoc
class _$GetMentorshipsSuccessfulCopyWithImpl<$Res>
    extends _$GetMentorshipsCopyWithImpl<$Res>
    implements $GetMentorshipsSuccessfulCopyWith<$Res> {
  _$GetMentorshipsSuccessfulCopyWithImpl(GetMentorshipsSuccessful _value,
      $Res Function(GetMentorshipsSuccessful) _then)
      : super(_value, (v) => _then(v as GetMentorshipsSuccessful));

  @override
  GetMentorshipsSuccessful get _value =>
      super._value as GetMentorshipsSuccessful;

  @override
  $Res call({
    Object mentorships = freezed,
  }) {
    return _then(GetMentorshipsSuccessful(
      mentorships == freezed
          ? _value.mentorships
          : mentorships as List<Mentorship>,
    ));
  }
}

/// @nodoc
class _$GetMentorshipsSuccessful implements GetMentorshipsSuccessful {
  const _$GetMentorshipsSuccessful(this.mentorships)
      : assert(mentorships != null);

  @override
  final List<Mentorship> mentorships;

  @override
  String toString() {
    return 'GetMentorships.successful(mentorships: $mentorships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMentorshipsSuccessful &&
            (identical(other.mentorships, mentorships) ||
                const DeepCollectionEquality()
                    .equals(other.mentorships, mentorships)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentorships);

  @override
  $GetMentorshipsSuccessfulCopyWith<GetMentorshipsSuccessful> get copyWith =>
      _$GetMentorshipsSuccessfulCopyWithImpl<GetMentorshipsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, List<String> category), {
    @required Result successful(List<Mentorship> mentorships),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(mentorships);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String userId, List<String> category), {
    Result successful(List<Mentorship> mentorships),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(mentorships);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMentorships$ value), {
    @required Result successful(GetMentorshipsSuccessful value),
    @required Result error(GetMentorshipsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorships$ value), {
    Result successful(GetMentorshipsSuccessful value),
    Result error(GetMentorshipsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMentorshipsSuccessful implements GetMentorships {
  const factory GetMentorshipsSuccessful(List<Mentorship> mentorships) =
      _$GetMentorshipsSuccessful;

  List<Mentorship> get mentorships;
  $GetMentorshipsSuccessfulCopyWith<GetMentorshipsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetMentorshipsErrorCopyWith<$Res> {
  factory $GetMentorshipsErrorCopyWith(
          GetMentorshipsError value, $Res Function(GetMentorshipsError) then) =
      _$GetMentorshipsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetMentorshipsErrorCopyWithImpl<$Res>
    extends _$GetMentorshipsCopyWithImpl<$Res>
    implements $GetMentorshipsErrorCopyWith<$Res> {
  _$GetMentorshipsErrorCopyWithImpl(
      GetMentorshipsError _value, $Res Function(GetMentorshipsError) _then)
      : super(_value, (v) => _then(v as GetMentorshipsError));

  @override
  GetMentorshipsError get _value => super._value as GetMentorshipsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetMentorshipsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetMentorshipsError implements GetMentorshipsError {
  const _$GetMentorshipsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetMentorships.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMentorshipsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetMentorshipsErrorCopyWith<GetMentorshipsError> get copyWith =>
      _$GetMentorshipsErrorCopyWithImpl<GetMentorshipsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, List<String> category), {
    @required Result successful(List<Mentorship> mentorships),
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
    Result $default(String userId, List<String> category), {
    Result successful(List<Mentorship> mentorships),
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
    Result $default(GetMentorships$ value), {
    @required Result successful(GetMentorshipsSuccessful value),
    @required Result error(GetMentorshipsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMentorships$ value), {
    Result successful(GetMentorshipsSuccessful value),
    Result error(GetMentorshipsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMentorshipsError implements GetMentorships, ErrorAction {
  const factory GetMentorshipsError(Object error) = _$GetMentorshipsError;

  Object get error;
  $GetMentorshipsErrorCopyWith<GetMentorshipsError> get copyWith;
}
