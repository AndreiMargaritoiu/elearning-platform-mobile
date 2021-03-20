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
class _$GetAllMentorshipsTearOff {
  const _$GetAllMentorshipsTearOff();

// ignore: unused_element
  GetAllMentorships$ call() {
    return const GetAllMentorships$();
  }

// ignore: unused_element
  GetAllMentorshipsSuccessful successful(List<Mentorship> mentorships) {
    return GetAllMentorshipsSuccessful(
      mentorships,
    );
  }

// ignore: unused_element
  GetAllMentorshipsError error(Object error) {
    return GetAllMentorshipsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetAllMentorships = _$GetAllMentorshipsTearOff();

/// @nodoc
mixin _$GetAllMentorships {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Mentorship> mentorships),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Mentorship> mentorships),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetAllMentorships$ value), {
    @required Result successful(GetAllMentorshipsSuccessful value),
    @required Result error(GetAllMentorshipsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllMentorships$ value), {
    Result successful(GetAllMentorshipsSuccessful value),
    Result error(GetAllMentorshipsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetAllMentorshipsCopyWith<$Res> {
  factory $GetAllMentorshipsCopyWith(
          GetAllMentorships value, $Res Function(GetAllMentorships) then) =
      _$GetAllMentorshipsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllMentorshipsCopyWithImpl<$Res>
    implements $GetAllMentorshipsCopyWith<$Res> {
  _$GetAllMentorshipsCopyWithImpl(this._value, this._then);

  final GetAllMentorships _value;
  // ignore: unused_field
  final $Res Function(GetAllMentorships) _then;
}

/// @nodoc
abstract class $GetAllMentorships$CopyWith<$Res> {
  factory $GetAllMentorships$CopyWith(
          GetAllMentorships$ value, $Res Function(GetAllMentorships$) then) =
      _$GetAllMentorships$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllMentorships$CopyWithImpl<$Res>
    extends _$GetAllMentorshipsCopyWithImpl<$Res>
    implements $GetAllMentorships$CopyWith<$Res> {
  _$GetAllMentorships$CopyWithImpl(
      GetAllMentorships$ _value, $Res Function(GetAllMentorships$) _then)
      : super(_value, (v) => _then(v as GetAllMentorships$));

  @override
  GetAllMentorships$ get _value => super._value as GetAllMentorships$;
}

/// @nodoc
class _$GetAllMentorships$ implements GetAllMentorships$ {
  const _$GetAllMentorships$();

  @override
  String toString() {
    return 'GetAllMentorships()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllMentorships$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Mentorship> mentorships),
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
    Result successful(List<Mentorship> mentorships),
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
    Result $default(GetAllMentorships$ value), {
    @required Result successful(GetAllMentorshipsSuccessful value),
    @required Result error(GetAllMentorshipsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllMentorships$ value), {
    Result successful(GetAllMentorshipsSuccessful value),
    Result error(GetAllMentorshipsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetAllMentorships$ implements GetAllMentorships {
  const factory GetAllMentorships$() = _$GetAllMentorships$;
}

/// @nodoc
abstract class $GetAllMentorshipsSuccessfulCopyWith<$Res> {
  factory $GetAllMentorshipsSuccessfulCopyWith(
          GetAllMentorshipsSuccessful value,
          $Res Function(GetAllMentorshipsSuccessful) then) =
      _$GetAllMentorshipsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Mentorship> mentorships});
}

/// @nodoc
class _$GetAllMentorshipsSuccessfulCopyWithImpl<$Res>
    extends _$GetAllMentorshipsCopyWithImpl<$Res>
    implements $GetAllMentorshipsSuccessfulCopyWith<$Res> {
  _$GetAllMentorshipsSuccessfulCopyWithImpl(GetAllMentorshipsSuccessful _value,
      $Res Function(GetAllMentorshipsSuccessful) _then)
      : super(_value, (v) => _then(v as GetAllMentorshipsSuccessful));

  @override
  GetAllMentorshipsSuccessful get _value =>
      super._value as GetAllMentorshipsSuccessful;

  @override
  $Res call({
    Object mentorships = freezed,
  }) {
    return _then(GetAllMentorshipsSuccessful(
      mentorships == freezed
          ? _value.mentorships
          : mentorships as List<Mentorship>,
    ));
  }
}

/// @nodoc
class _$GetAllMentorshipsSuccessful implements GetAllMentorshipsSuccessful {
  const _$GetAllMentorshipsSuccessful(this.mentorships)
      : assert(mentorships != null);

  @override
  final List<Mentorship> mentorships;

  @override
  String toString() {
    return 'GetAllMentorships.successful(mentorships: $mentorships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllMentorshipsSuccessful &&
            (identical(other.mentorships, mentorships) ||
                const DeepCollectionEquality()
                    .equals(other.mentorships, mentorships)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentorships);

  @override
  $GetAllMentorshipsSuccessfulCopyWith<GetAllMentorshipsSuccessful>
      get copyWith => _$GetAllMentorshipsSuccessfulCopyWithImpl<
          GetAllMentorshipsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(GetAllMentorships$ value), {
    @required Result successful(GetAllMentorshipsSuccessful value),
    @required Result error(GetAllMentorshipsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllMentorships$ value), {
    Result successful(GetAllMentorshipsSuccessful value),
    Result error(GetAllMentorshipsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetAllMentorshipsSuccessful implements GetAllMentorships {
  const factory GetAllMentorshipsSuccessful(List<Mentorship> mentorships) =
      _$GetAllMentorshipsSuccessful;

  List<Mentorship> get mentorships;
  $GetAllMentorshipsSuccessfulCopyWith<GetAllMentorshipsSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetAllMentorshipsErrorCopyWith<$Res> {
  factory $GetAllMentorshipsErrorCopyWith(GetAllMentorshipsError value,
          $Res Function(GetAllMentorshipsError) then) =
      _$GetAllMentorshipsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetAllMentorshipsErrorCopyWithImpl<$Res>
    extends _$GetAllMentorshipsCopyWithImpl<$Res>
    implements $GetAllMentorshipsErrorCopyWith<$Res> {
  _$GetAllMentorshipsErrorCopyWithImpl(GetAllMentorshipsError _value,
      $Res Function(GetAllMentorshipsError) _then)
      : super(_value, (v) => _then(v as GetAllMentorshipsError));

  @override
  GetAllMentorshipsError get _value => super._value as GetAllMentorshipsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetAllMentorshipsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetAllMentorshipsError implements GetAllMentorshipsError {
  const _$GetAllMentorshipsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetAllMentorships.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllMentorshipsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetAllMentorshipsErrorCopyWith<GetAllMentorshipsError> get copyWith =>
      _$GetAllMentorshipsErrorCopyWithImpl<GetAllMentorshipsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(GetAllMentorships$ value), {
    @required Result successful(GetAllMentorshipsSuccessful value),
    @required Result error(GetAllMentorshipsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllMentorships$ value), {
    Result successful(GetAllMentorshipsSuccessful value),
    Result error(GetAllMentorshipsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetAllMentorshipsError
    implements GetAllMentorships, ErrorAction {
  const factory GetAllMentorshipsError(Object error) = _$GetAllMentorshipsError;

  Object get error;
  $GetAllMentorshipsErrorCopyWith<GetAllMentorshipsError> get copyWith;
}

/// @nodoc
class _$GetMentorshipByIdTearOff {
  const _$GetMentorshipByIdTearOff();

// ignore: unused_element
  GetMentorshipById$ call({@required String id}) {
    return GetMentorshipById$(
      id: id,
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
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetMentorshipById$ implements GetMentorshipById$ {
  const _$GetMentorshipById$({@required this.id}) : assert(id != null);

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
  const factory GetMentorshipById$({@required String id}) =
      _$GetMentorshipById$;

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
  UpdateMentorship$ call({@required String id}) {
    return UpdateMentorship$(
      id: id,
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
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$UpdateMentorship$ implements UpdateMentorship$ {
  const _$UpdateMentorship$({@required this.id}) : assert(id != null);

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
  const factory UpdateMentorship$({@required String id}) = _$UpdateMentorship$;

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
  DeleteMentorship$ call({@required String id}) {
    return DeleteMentorship$(
      id: id,
    );
  }

// ignore: unused_element
  DeleteMentorshipSuccessful successful() {
    return const DeleteMentorshipSuccessful();
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
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(),
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
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$DeleteMentorship$ implements DeleteMentorship$ {
  const _$DeleteMentorship$({@required this.id}) : assert(id != null);

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
    @required Result successful(),
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
    Result successful(),
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
  const factory DeleteMentorship$({@required String id}) = _$DeleteMentorship$;

  String get id;
  $DeleteMentorship$CopyWith<DeleteMentorship$> get copyWith;
}

/// @nodoc
abstract class $DeleteMentorshipSuccessfulCopyWith<$Res> {
  factory $DeleteMentorshipSuccessfulCopyWith(DeleteMentorshipSuccessful value,
          $Res Function(DeleteMentorshipSuccessful) then) =
      _$DeleteMentorshipSuccessfulCopyWithImpl<$Res>;
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
}

/// @nodoc
class _$DeleteMentorshipSuccessful implements DeleteMentorshipSuccessful {
  const _$DeleteMentorshipSuccessful();

  @override
  String toString() {
    return 'DeleteMentorship.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteMentorshipSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
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
    Result $default(String id), {
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
  const factory DeleteMentorshipSuccessful() = _$DeleteMentorshipSuccessful;
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
    Result $default(String id), {
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
  UpdateMentorshipInfo$ call(
      {String addMentee, String removeMentee, String description, int price}) {
    return UpdateMentorshipInfo$(
      addMentee: addMentee,
      removeMentee: removeMentee,
      description: description,
      price: price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateMentorshipInfo = _$UpdateMentorshipInfoTearOff();

/// @nodoc
mixin _$UpdateMentorshipInfo {
  String get addMentee;
  String get removeMentee;
  String get description;
  int get price;

  $UpdateMentorshipInfoCopyWith<UpdateMentorshipInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateMentorshipInfoCopyWith<$Res> {
  factory $UpdateMentorshipInfoCopyWith(UpdateMentorshipInfo value,
          $Res Function(UpdateMentorshipInfo) then) =
      _$UpdateMentorshipInfoCopyWithImpl<$Res>;
  $Res call(
      {String addMentee, String removeMentee, String description, int price});
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
    Object addMentee = freezed,
    Object removeMentee = freezed,
    Object description = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      addMentee: addMentee == freezed ? _value.addMentee : addMentee as String,
      removeMentee: removeMentee == freezed
          ? _value.removeMentee
          : removeMentee as String,
      description:
          description == freezed ? _value.description : description as String,
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
  $Res call(
      {String addMentee, String removeMentee, String description, int price});
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
    Object addMentee = freezed,
    Object removeMentee = freezed,
    Object description = freezed,
    Object price = freezed,
  }) {
    return _then(UpdateMentorshipInfo$(
      addMentee: addMentee == freezed ? _value.addMentee : addMentee as String,
      removeMentee: removeMentee == freezed
          ? _value.removeMentee
          : removeMentee as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

/// @nodoc
class _$UpdateMentorshipInfo$ implements UpdateMentorshipInfo$ {
  const _$UpdateMentorshipInfo$(
      {this.addMentee, this.removeMentee, this.description, this.price});

  @override
  final String addMentee;
  @override
  final String removeMentee;
  @override
  final String description;
  @override
  final int price;

  @override
  String toString() {
    return 'UpdateMentorshipInfo(addMentee: $addMentee, removeMentee: $removeMentee, description: $description, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMentorshipInfo$ &&
            (identical(other.addMentee, addMentee) ||
                const DeepCollectionEquality()
                    .equals(other.addMentee, addMentee)) &&
            (identical(other.removeMentee, removeMentee) ||
                const DeepCollectionEquality()
                    .equals(other.removeMentee, removeMentee)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addMentee) ^
      const DeepCollectionEquality().hash(removeMentee) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price);

  @override
  $UpdateMentorshipInfo$CopyWith<UpdateMentorshipInfo$> get copyWith =>
      _$UpdateMentorshipInfo$CopyWithImpl<UpdateMentorshipInfo$>(
          this, _$identity);
}

abstract class UpdateMentorshipInfo$ implements UpdateMentorshipInfo {
  const factory UpdateMentorshipInfo$(
      {String addMentee,
      String removeMentee,
      String description,
      int price}) = _$UpdateMentorshipInfo$;

  @override
  String get addMentee;
  @override
  String get removeMentee;
  @override
  String get description;
  @override
  int get price;
  @override
  $UpdateMentorshipInfo$CopyWith<UpdateMentorshipInfo$> get copyWith;
}