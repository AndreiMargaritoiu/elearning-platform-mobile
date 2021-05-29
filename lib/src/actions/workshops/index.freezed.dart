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

/// @nodoc
class _$RegisterToWorkshopTearOff {
  const _$RegisterToWorkshopTearOff();

// ignore: unused_element
  RegisterToWorkshop$ call(String workshopId) {
    return RegisterToWorkshop$(
      workshopId,
    );
  }

// ignore: unused_element
  RegisterToWorkshopSuccessful successful(Workshop workshop) {
    return RegisterToWorkshopSuccessful(
      workshop,
    );
  }

// ignore: unused_element
  RegisterToWorkshopError error(Object error) {
    return RegisterToWorkshopError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterToWorkshop = _$RegisterToWorkshopTearOff();

/// @nodoc
mixin _$RegisterToWorkshop {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String workshopId), {
    @required Result successful(Workshop workshop),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String workshopId), {
    Result successful(Workshop workshop),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    @required Result successful(RegisterToWorkshopSuccessful value),
    @required Result error(RegisterToWorkshopError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    Result successful(RegisterToWorkshopSuccessful value),
    Result error(RegisterToWorkshopError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RegisterToWorkshopCopyWith<$Res> {
  factory $RegisterToWorkshopCopyWith(
          RegisterToWorkshop value, $Res Function(RegisterToWorkshop) then) =
      _$RegisterToWorkshopCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterToWorkshopCopyWithImpl<$Res>
    implements $RegisterToWorkshopCopyWith<$Res> {
  _$RegisterToWorkshopCopyWithImpl(this._value, this._then);

  final RegisterToWorkshop _value;
  // ignore: unused_field
  final $Res Function(RegisterToWorkshop) _then;
}

/// @nodoc
abstract class $RegisterToWorkshop$CopyWith<$Res> {
  factory $RegisterToWorkshop$CopyWith(
          RegisterToWorkshop$ value, $Res Function(RegisterToWorkshop$) then) =
      _$RegisterToWorkshop$CopyWithImpl<$Res>;
  $Res call({String workshopId});
}

/// @nodoc
class _$RegisterToWorkshop$CopyWithImpl<$Res>
    extends _$RegisterToWorkshopCopyWithImpl<$Res>
    implements $RegisterToWorkshop$CopyWith<$Res> {
  _$RegisterToWorkshop$CopyWithImpl(
      RegisterToWorkshop$ _value, $Res Function(RegisterToWorkshop$) _then)
      : super(_value, (v) => _then(v as RegisterToWorkshop$));

  @override
  RegisterToWorkshop$ get _value => super._value as RegisterToWorkshop$;

  @override
  $Res call({
    Object workshopId = freezed,
  }) {
    return _then(RegisterToWorkshop$(
      workshopId == freezed ? _value.workshopId : workshopId as String,
    ));
  }
}

/// @nodoc
class _$RegisterToWorkshop$ implements RegisterToWorkshop$ {
  const _$RegisterToWorkshop$(this.workshopId) : assert(workshopId != null);

  @override
  final String workshopId;

  @override
  String toString() {
    return 'RegisterToWorkshop(workshopId: $workshopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterToWorkshop$ &&
            (identical(other.workshopId, workshopId) ||
                const DeepCollectionEquality()
                    .equals(other.workshopId, workshopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workshopId);

  @override
  $RegisterToWorkshop$CopyWith<RegisterToWorkshop$> get copyWith =>
      _$RegisterToWorkshop$CopyWithImpl<RegisterToWorkshop$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String workshopId), {
    @required Result successful(Workshop workshop),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(workshopId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String workshopId), {
    Result successful(Workshop workshop),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(workshopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    @required Result successful(RegisterToWorkshopSuccessful value),
    @required Result error(RegisterToWorkshopError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    Result successful(RegisterToWorkshopSuccessful value),
    Result error(RegisterToWorkshopError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RegisterToWorkshop$ implements RegisterToWorkshop {
  const factory RegisterToWorkshop$(String workshopId) = _$RegisterToWorkshop$;

  String get workshopId;
  $RegisterToWorkshop$CopyWith<RegisterToWorkshop$> get copyWith;
}

/// @nodoc
abstract class $RegisterToWorkshopSuccessfulCopyWith<$Res> {
  factory $RegisterToWorkshopSuccessfulCopyWith(
          RegisterToWorkshopSuccessful value,
          $Res Function(RegisterToWorkshopSuccessful) then) =
      _$RegisterToWorkshopSuccessfulCopyWithImpl<$Res>;
  $Res call({Workshop workshop});
}

/// @nodoc
class _$RegisterToWorkshopSuccessfulCopyWithImpl<$Res>
    extends _$RegisterToWorkshopCopyWithImpl<$Res>
    implements $RegisterToWorkshopSuccessfulCopyWith<$Res> {
  _$RegisterToWorkshopSuccessfulCopyWithImpl(
      RegisterToWorkshopSuccessful _value,
      $Res Function(RegisterToWorkshopSuccessful) _then)
      : super(_value, (v) => _then(v as RegisterToWorkshopSuccessful));

  @override
  RegisterToWorkshopSuccessful get _value =>
      super._value as RegisterToWorkshopSuccessful;

  @override
  $Res call({
    Object workshop = freezed,
  }) {
    return _then(RegisterToWorkshopSuccessful(
      workshop == freezed ? _value.workshop : workshop as Workshop,
    ));
  }
}

/// @nodoc
class _$RegisterToWorkshopSuccessful implements RegisterToWorkshopSuccessful {
  const _$RegisterToWorkshopSuccessful(this.workshop)
      : assert(workshop != null);

  @override
  final Workshop workshop;

  @override
  String toString() {
    return 'RegisterToWorkshop.successful(workshop: $workshop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterToWorkshopSuccessful &&
            (identical(other.workshop, workshop) ||
                const DeepCollectionEquality()
                    .equals(other.workshop, workshop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workshop);

  @override
  $RegisterToWorkshopSuccessfulCopyWith<RegisterToWorkshopSuccessful>
      get copyWith => _$RegisterToWorkshopSuccessfulCopyWithImpl<
          RegisterToWorkshopSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String workshopId), {
    @required Result successful(Workshop workshop),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(workshop);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String workshopId), {
    Result successful(Workshop workshop),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(workshop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    @required Result successful(RegisterToWorkshopSuccessful value),
    @required Result error(RegisterToWorkshopError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    Result successful(RegisterToWorkshopSuccessful value),
    Result error(RegisterToWorkshopError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterToWorkshopSuccessful implements RegisterToWorkshop {
  const factory RegisterToWorkshopSuccessful(Workshop workshop) =
      _$RegisterToWorkshopSuccessful;

  Workshop get workshop;
  $RegisterToWorkshopSuccessfulCopyWith<RegisterToWorkshopSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $RegisterToWorkshopErrorCopyWith<$Res> {
  factory $RegisterToWorkshopErrorCopyWith(RegisterToWorkshopError value,
          $Res Function(RegisterToWorkshopError) then) =
      _$RegisterToWorkshopErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$RegisterToWorkshopErrorCopyWithImpl<$Res>
    extends _$RegisterToWorkshopCopyWithImpl<$Res>
    implements $RegisterToWorkshopErrorCopyWith<$Res> {
  _$RegisterToWorkshopErrorCopyWithImpl(RegisterToWorkshopError _value,
      $Res Function(RegisterToWorkshopError) _then)
      : super(_value, (v) => _then(v as RegisterToWorkshopError));

  @override
  RegisterToWorkshopError get _value => super._value as RegisterToWorkshopError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(RegisterToWorkshopError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RegisterToWorkshopError implements RegisterToWorkshopError {
  const _$RegisterToWorkshopError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'RegisterToWorkshop.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterToWorkshopError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $RegisterToWorkshopErrorCopyWith<RegisterToWorkshopError> get copyWith =>
      _$RegisterToWorkshopErrorCopyWithImpl<RegisterToWorkshopError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String workshopId), {
    @required Result successful(Workshop workshop),
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
    Result $default(String workshopId), {
    Result successful(Workshop workshop),
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
    Result $default(RegisterToWorkshop$ value), {
    @required Result successful(RegisterToWorkshopSuccessful value),
    @required Result error(RegisterToWorkshopError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RegisterToWorkshop$ value), {
    Result successful(RegisterToWorkshopSuccessful value),
    Result error(RegisterToWorkshopError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterToWorkshopError
    implements RegisterToWorkshop, ErrorAction {
  const factory RegisterToWorkshopError(Object error) =
      _$RegisterToWorkshopError;

  Object get error;
  $RegisterToWorkshopErrorCopyWith<RegisterToWorkshopError> get copyWith;
}
