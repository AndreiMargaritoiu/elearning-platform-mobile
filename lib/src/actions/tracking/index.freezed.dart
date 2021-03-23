// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of tracking_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrackActionTearOff {
  const _$TrackActionTearOff();

// ignore: unused_element
  TrackAction$ call() {
    return const TrackAction$();
  }

// ignore: unused_element
  TrackActionSuccessful successful() {
    return const TrackActionSuccessful();
  }

// ignore: unused_element
  TrackActionError error(Object error) {
    return TrackActionError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrackAction = _$TrackActionTearOff();

/// @nodoc
mixin _$TrackAction {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TrackAction$ value), {
    @required Result successful(TrackActionSuccessful value),
    @required Result error(TrackActionError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TrackAction$ value), {
    Result successful(TrackActionSuccessful value),
    Result error(TrackActionError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TrackActionCopyWith<$Res> {
  factory $TrackActionCopyWith(
          TrackAction value, $Res Function(TrackAction) then) =
      _$TrackActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackActionCopyWithImpl<$Res> implements $TrackActionCopyWith<$Res> {
  _$TrackActionCopyWithImpl(this._value, this._then);

  final TrackAction _value;
  // ignore: unused_field
  final $Res Function(TrackAction) _then;
}

/// @nodoc
abstract class $TrackAction$CopyWith<$Res> {
  factory $TrackAction$CopyWith(
          TrackAction$ value, $Res Function(TrackAction$) then) =
      _$TrackAction$CopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackAction$CopyWithImpl<$Res> extends _$TrackActionCopyWithImpl<$Res>
    implements $TrackAction$CopyWith<$Res> {
  _$TrackAction$CopyWithImpl(
      TrackAction$ _value, $Res Function(TrackAction$) _then)
      : super(_value, (v) => _then(v as TrackAction$));

  @override
  TrackAction$ get _value => super._value as TrackAction$;
}

/// @nodoc
class _$TrackAction$ implements TrackAction$ {
  const _$TrackAction$();

  @override
  String toString() {
    return 'TrackAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackAction$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
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
    Result successful(),
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
    Result $default(TrackAction$ value), {
    @required Result successful(TrackActionSuccessful value),
    @required Result error(TrackActionError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TrackAction$ value), {
    Result successful(TrackActionSuccessful value),
    Result error(TrackActionError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TrackAction$ implements TrackAction {
  const factory TrackAction$() = _$TrackAction$;
}

/// @nodoc
abstract class $TrackActionSuccessfulCopyWith<$Res> {
  factory $TrackActionSuccessfulCopyWith(TrackActionSuccessful value,
          $Res Function(TrackActionSuccessful) then) =
      _$TrackActionSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackActionSuccessfulCopyWithImpl<$Res>
    extends _$TrackActionCopyWithImpl<$Res>
    implements $TrackActionSuccessfulCopyWith<$Res> {
  _$TrackActionSuccessfulCopyWithImpl(
      TrackActionSuccessful _value, $Res Function(TrackActionSuccessful) _then)
      : super(_value, (v) => _then(v as TrackActionSuccessful));

  @override
  TrackActionSuccessful get _value => super._value as TrackActionSuccessful;
}

/// @nodoc
class _$TrackActionSuccessful implements TrackActionSuccessful {
  const _$TrackActionSuccessful();

  @override
  String toString() {
    return 'TrackAction.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackActionSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(TrackAction$ value), {
    @required Result successful(TrackActionSuccessful value),
    @required Result error(TrackActionError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TrackAction$ value), {
    Result successful(TrackActionSuccessful value),
    Result error(TrackActionError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class TrackActionSuccessful implements TrackAction {
  const factory TrackActionSuccessful() = _$TrackActionSuccessful;
}

/// @nodoc
abstract class $TrackActionErrorCopyWith<$Res> {
  factory $TrackActionErrorCopyWith(
          TrackActionError value, $Res Function(TrackActionError) then) =
      _$TrackActionErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$TrackActionErrorCopyWithImpl<$Res>
    extends _$TrackActionCopyWithImpl<$Res>
    implements $TrackActionErrorCopyWith<$Res> {
  _$TrackActionErrorCopyWithImpl(
      TrackActionError _value, $Res Function(TrackActionError) _then)
      : super(_value, (v) => _then(v as TrackActionError));

  @override
  TrackActionError get _value => super._value as TrackActionError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(TrackActionError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$TrackActionError implements TrackActionError {
  const _$TrackActionError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'TrackAction.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackActionError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $TrackActionErrorCopyWith<TrackActionError> get copyWith =>
      _$TrackActionErrorCopyWithImpl<TrackActionError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(TrackAction$ value), {
    @required Result successful(TrackActionSuccessful value),
    @required Result error(TrackActionError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TrackAction$ value), {
    Result successful(TrackActionSuccessful value),
    Result error(TrackActionError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrackActionError implements TrackAction, ErrorAction {
  const factory TrackActionError(Object error) = _$TrackActionError;

  Object get error;
  $TrackActionErrorCopyWith<TrackActionError> get copyWith;
}

/// @nodoc
class _$UpdateTrackingInfoTearOff {
  const _$UpdateTrackingInfoTearOff();

// ignore: unused_element
  UpdateTrackingInfo$ call({String vid}) {
    return UpdateTrackingInfo$(
      vid: vid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateTrackingInfo = _$UpdateTrackingInfoTearOff();

/// @nodoc
mixin _$UpdateTrackingInfo {
  String get vid;

  $UpdateTrackingInfoCopyWith<UpdateTrackingInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateTrackingInfoCopyWith<$Res> {
  factory $UpdateTrackingInfoCopyWith(
          UpdateTrackingInfo value, $Res Function(UpdateTrackingInfo) then) =
      _$UpdateTrackingInfoCopyWithImpl<$Res>;
  $Res call({String vid});
}

/// @nodoc
class _$UpdateTrackingInfoCopyWithImpl<$Res>
    implements $UpdateTrackingInfoCopyWith<$Res> {
  _$UpdateTrackingInfoCopyWithImpl(this._value, this._then);

  final UpdateTrackingInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateTrackingInfo) _then;

  @override
  $Res call({
    Object vid = freezed,
  }) {
    return _then(_value.copyWith(
      vid: vid == freezed ? _value.vid : vid as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateTrackingInfo$CopyWith<$Res>
    implements $UpdateTrackingInfoCopyWith<$Res> {
  factory $UpdateTrackingInfo$CopyWith(
          UpdateTrackingInfo$ value, $Res Function(UpdateTrackingInfo$) then) =
      _$UpdateTrackingInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String vid});
}

/// @nodoc
class _$UpdateTrackingInfo$CopyWithImpl<$Res>
    extends _$UpdateTrackingInfoCopyWithImpl<$Res>
    implements $UpdateTrackingInfo$CopyWith<$Res> {
  _$UpdateTrackingInfo$CopyWithImpl(
      UpdateTrackingInfo$ _value, $Res Function(UpdateTrackingInfo$) _then)
      : super(_value, (v) => _then(v as UpdateTrackingInfo$));

  @override
  UpdateTrackingInfo$ get _value => super._value as UpdateTrackingInfo$;

  @override
  $Res call({
    Object vid = freezed,
  }) {
    return _then(UpdateTrackingInfo$(
      vid: vid == freezed ? _value.vid : vid as String,
    ));
  }
}

/// @nodoc
class _$UpdateTrackingInfo$ implements UpdateTrackingInfo$ {
  const _$UpdateTrackingInfo$({this.vid});

  @override
  final String vid;

  @override
  String toString() {
    return 'UpdateTrackingInfo(vid: $vid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTrackingInfo$ &&
            (identical(other.vid, vid) ||
                const DeepCollectionEquality().equals(other.vid, vid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vid);

  @override
  $UpdateTrackingInfo$CopyWith<UpdateTrackingInfo$> get copyWith =>
      _$UpdateTrackingInfo$CopyWithImpl<UpdateTrackingInfo$>(this, _$identity);
}

abstract class UpdateTrackingInfo$ implements UpdateTrackingInfo {
  const factory UpdateTrackingInfo$({String vid}) = _$UpdateTrackingInfo$;

  @override
  String get vid;
  @override
  $UpdateTrackingInfo$CopyWith<UpdateTrackingInfo$> get copyWith;
}
