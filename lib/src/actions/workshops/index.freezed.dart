// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of workshops_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetAllWorkshopsTearOff {
  const _$GetAllWorkshopsTearOff();

// ignore: unused_element
  GetAllWorkshops$ call() {
    return const GetAllWorkshops$();
  }

// ignore: unused_element
  GetAllWorkshopsSuccessful successful(List<Workshop> workshops) {
    return GetAllWorkshopsSuccessful(
      workshops,
    );
  }

// ignore: unused_element
  GetAllWorkshopsError error(Object error) {
    return GetAllWorkshopsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetAllWorkshops = _$GetAllWorkshopsTearOff();

/// @nodoc
mixin _$GetAllWorkshops {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Workshop> workshops),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Workshop> workshops),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetAllWorkshops$ value), {
    @required Result successful(GetAllWorkshopsSuccessful value),
    @required Result error(GetAllWorkshopsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllWorkshops$ value), {
    Result successful(GetAllWorkshopsSuccessful value),
    Result error(GetAllWorkshopsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetAllWorkshopsCopyWith<$Res> {
  factory $GetAllWorkshopsCopyWith(
          GetAllWorkshops value, $Res Function(GetAllWorkshops) then) =
      _$GetAllWorkshopsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllWorkshopsCopyWithImpl<$Res>
    implements $GetAllWorkshopsCopyWith<$Res> {
  _$GetAllWorkshopsCopyWithImpl(this._value, this._then);

  final GetAllWorkshops _value;
  // ignore: unused_field
  final $Res Function(GetAllWorkshops) _then;
}

/// @nodoc
abstract class $GetAllWorkshops$CopyWith<$Res> {
  factory $GetAllWorkshops$CopyWith(
          GetAllWorkshops$ value, $Res Function(GetAllWorkshops$) then) =
      _$GetAllWorkshops$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllWorkshops$CopyWithImpl<$Res>
    extends _$GetAllWorkshopsCopyWithImpl<$Res>
    implements $GetAllWorkshops$CopyWith<$Res> {
  _$GetAllWorkshops$CopyWithImpl(
      GetAllWorkshops$ _value, $Res Function(GetAllWorkshops$) _then)
      : super(_value, (v) => _then(v as GetAllWorkshops$));

  @override
  GetAllWorkshops$ get _value => super._value as GetAllWorkshops$;
}

/// @nodoc
class _$GetAllWorkshops$ implements GetAllWorkshops$ {
  const _$GetAllWorkshops$();

  @override
  String toString() {
    return 'GetAllWorkshops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllWorkshops$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Workshop> workshops),
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
    Result successful(List<Workshop> workshops),
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
    Result $default(GetAllWorkshops$ value), {
    @required Result successful(GetAllWorkshopsSuccessful value),
    @required Result error(GetAllWorkshopsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllWorkshops$ value), {
    Result successful(GetAllWorkshopsSuccessful value),
    Result error(GetAllWorkshopsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetAllWorkshops$ implements GetAllWorkshops {
  const factory GetAllWorkshops$() = _$GetAllWorkshops$;
}

/// @nodoc
abstract class $GetAllWorkshopsSuccessfulCopyWith<$Res> {
  factory $GetAllWorkshopsSuccessfulCopyWith(GetAllWorkshopsSuccessful value,
          $Res Function(GetAllWorkshopsSuccessful) then) =
      _$GetAllWorkshopsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Workshop> workshops});
}

/// @nodoc
class _$GetAllWorkshopsSuccessfulCopyWithImpl<$Res>
    extends _$GetAllWorkshopsCopyWithImpl<$Res>
    implements $GetAllWorkshopsSuccessfulCopyWith<$Res> {
  _$GetAllWorkshopsSuccessfulCopyWithImpl(GetAllWorkshopsSuccessful _value,
      $Res Function(GetAllWorkshopsSuccessful) _then)
      : super(_value, (v) => _then(v as GetAllWorkshopsSuccessful));

  @override
  GetAllWorkshopsSuccessful get _value =>
      super._value as GetAllWorkshopsSuccessful;

  @override
  $Res call({
    Object workshops = freezed,
  }) {
    return _then(GetAllWorkshopsSuccessful(
      workshops == freezed ? _value.workshops : workshops as List<Workshop>,
    ));
  }
}

/// @nodoc
class _$GetAllWorkshopsSuccessful implements GetAllWorkshopsSuccessful {
  const _$GetAllWorkshopsSuccessful(this.workshops) : assert(workshops != null);

  @override
  final List<Workshop> workshops;

  @override
  String toString() {
    return 'GetAllWorkshops.successful(workshops: $workshops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllWorkshopsSuccessful &&
            (identical(other.workshops, workshops) ||
                const DeepCollectionEquality()
                    .equals(other.workshops, workshops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workshops);

  @override
  $GetAllWorkshopsSuccessfulCopyWith<GetAllWorkshopsSuccessful> get copyWith =>
      _$GetAllWorkshopsSuccessfulCopyWithImpl<GetAllWorkshopsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Workshop> workshops),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(workshops);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Workshop> workshops),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(workshops);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetAllWorkshops$ value), {
    @required Result successful(GetAllWorkshopsSuccessful value),
    @required Result error(GetAllWorkshopsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllWorkshops$ value), {
    Result successful(GetAllWorkshopsSuccessful value),
    Result error(GetAllWorkshopsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetAllWorkshopsSuccessful implements GetAllWorkshops {
  const factory GetAllWorkshopsSuccessful(List<Workshop> workshops) =
      _$GetAllWorkshopsSuccessful;

  List<Workshop> get workshops;
  $GetAllWorkshopsSuccessfulCopyWith<GetAllWorkshopsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetAllWorkshopsErrorCopyWith<$Res> {
  factory $GetAllWorkshopsErrorCopyWith(GetAllWorkshopsError value,
          $Res Function(GetAllWorkshopsError) then) =
      _$GetAllWorkshopsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetAllWorkshopsErrorCopyWithImpl<$Res>
    extends _$GetAllWorkshopsCopyWithImpl<$Res>
    implements $GetAllWorkshopsErrorCopyWith<$Res> {
  _$GetAllWorkshopsErrorCopyWithImpl(
      GetAllWorkshopsError _value, $Res Function(GetAllWorkshopsError) _then)
      : super(_value, (v) => _then(v as GetAllWorkshopsError));

  @override
  GetAllWorkshopsError get _value => super._value as GetAllWorkshopsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetAllWorkshopsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetAllWorkshopsError implements GetAllWorkshopsError {
  const _$GetAllWorkshopsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetAllWorkshops.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllWorkshopsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetAllWorkshopsErrorCopyWith<GetAllWorkshopsError> get copyWith =>
      _$GetAllWorkshopsErrorCopyWithImpl<GetAllWorkshopsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Workshop> workshops),
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
    Result successful(List<Workshop> workshops),
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
    Result $default(GetAllWorkshops$ value), {
    @required Result successful(GetAllWorkshopsSuccessful value),
    @required Result error(GetAllWorkshopsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllWorkshops$ value), {
    Result successful(GetAllWorkshopsSuccessful value),
    Result error(GetAllWorkshopsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetAllWorkshopsError implements GetAllWorkshops, ErrorAction {
  const factory GetAllWorkshopsError(Object error) = _$GetAllWorkshopsError;

  Object get error;
  $GetAllWorkshopsErrorCopyWith<GetAllWorkshopsError> get copyWith;
}
