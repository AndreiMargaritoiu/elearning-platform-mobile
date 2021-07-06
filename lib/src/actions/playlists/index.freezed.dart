// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of playlists_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreatePlaylistTearOff {
  const _$CreatePlaylistTearOff();

// ignore: unused_element
  CreatePlaylist$ call() {
    return const CreatePlaylist$();
  }

// ignore: unused_element
  CreatePlaylistSuccessful successful(Playlist playlist) {
    return CreatePlaylistSuccessful(
      playlist,
    );
  }

// ignore: unused_element
  CreatePlaylistError error(Object error) {
    return CreatePlaylistError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreatePlaylist = _$CreatePlaylistTearOff();

/// @nodoc
mixin _$CreatePlaylist {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePlaylist$ value), {
    @required Result successful(CreatePlaylistSuccessful value),
    @required Result error(CreatePlaylistError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePlaylist$ value), {
    Result successful(CreatePlaylistSuccessful value),
    Result error(CreatePlaylistError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreatePlaylistCopyWith<$Res> {
  factory $CreatePlaylistCopyWith(
          CreatePlaylist value, $Res Function(CreatePlaylist) then) =
      _$CreatePlaylistCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePlaylistCopyWithImpl<$Res>
    implements $CreatePlaylistCopyWith<$Res> {
  _$CreatePlaylistCopyWithImpl(this._value, this._then);

  final CreatePlaylist _value;
  // ignore: unused_field
  final $Res Function(CreatePlaylist) _then;
}

/// @nodoc
abstract class $CreatePlaylist$CopyWith<$Res> {
  factory $CreatePlaylist$CopyWith(
          CreatePlaylist$ value, $Res Function(CreatePlaylist$) then) =
      _$CreatePlaylist$CopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePlaylist$CopyWithImpl<$Res>
    extends _$CreatePlaylistCopyWithImpl<$Res>
    implements $CreatePlaylist$CopyWith<$Res> {
  _$CreatePlaylist$CopyWithImpl(
      CreatePlaylist$ _value, $Res Function(CreatePlaylist$) _then)
      : super(_value, (v) => _then(v as CreatePlaylist$));

  @override
  CreatePlaylist$ get _value => super._value as CreatePlaylist$;
}

/// @nodoc
class _$CreatePlaylist$ implements CreatePlaylist$ {
  const _$CreatePlaylist$();

  @override
  String toString() {
    return 'CreatePlaylist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreatePlaylist$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Playlist playlist),
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
    Result successful(Playlist playlist),
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
    Result $default(CreatePlaylist$ value), {
    @required Result successful(CreatePlaylistSuccessful value),
    @required Result error(CreatePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePlaylist$ value), {
    Result successful(CreatePlaylistSuccessful value),
    Result error(CreatePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreatePlaylist$ implements CreatePlaylist {
  const factory CreatePlaylist$() = _$CreatePlaylist$;
}

/// @nodoc
abstract class $CreatePlaylistSuccessfulCopyWith<$Res> {
  factory $CreatePlaylistSuccessfulCopyWith(CreatePlaylistSuccessful value,
          $Res Function(CreatePlaylistSuccessful) then) =
      _$CreatePlaylistSuccessfulCopyWithImpl<$Res>;
  $Res call({Playlist playlist});
}

/// @nodoc
class _$CreatePlaylistSuccessfulCopyWithImpl<$Res>
    extends _$CreatePlaylistCopyWithImpl<$Res>
    implements $CreatePlaylistSuccessfulCopyWith<$Res> {
  _$CreatePlaylistSuccessfulCopyWithImpl(CreatePlaylistSuccessful _value,
      $Res Function(CreatePlaylistSuccessful) _then)
      : super(_value, (v) => _then(v as CreatePlaylistSuccessful));

  @override
  CreatePlaylistSuccessful get _value =>
      super._value as CreatePlaylistSuccessful;

  @override
  $Res call({
    Object playlist = freezed,
  }) {
    return _then(CreatePlaylistSuccessful(
      playlist == freezed ? _value.playlist : playlist as Playlist,
    ));
  }
}

/// @nodoc
class _$CreatePlaylistSuccessful implements CreatePlaylistSuccessful {
  const _$CreatePlaylistSuccessful(this.playlist) : assert(playlist != null);

  @override
  final Playlist playlist;

  @override
  String toString() {
    return 'CreatePlaylist.successful(playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePlaylistSuccessful &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlist);

  @override
  $CreatePlaylistSuccessfulCopyWith<CreatePlaylistSuccessful> get copyWith =>
      _$CreatePlaylistSuccessfulCopyWithImpl<CreatePlaylistSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(playlist);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(playlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePlaylist$ value), {
    @required Result successful(CreatePlaylistSuccessful value),
    @required Result error(CreatePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePlaylist$ value), {
    Result successful(CreatePlaylistSuccessful value),
    Result error(CreatePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreatePlaylistSuccessful implements CreatePlaylist {
  const factory CreatePlaylistSuccessful(Playlist playlist) =
      _$CreatePlaylistSuccessful;

  Playlist get playlist;
  $CreatePlaylistSuccessfulCopyWith<CreatePlaylistSuccessful> get copyWith;
}

/// @nodoc
abstract class $CreatePlaylistErrorCopyWith<$Res> {
  factory $CreatePlaylistErrorCopyWith(
          CreatePlaylistError value, $Res Function(CreatePlaylistError) then) =
      _$CreatePlaylistErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreatePlaylistErrorCopyWithImpl<$Res>
    extends _$CreatePlaylistCopyWithImpl<$Res>
    implements $CreatePlaylistErrorCopyWith<$Res> {
  _$CreatePlaylistErrorCopyWithImpl(
      CreatePlaylistError _value, $Res Function(CreatePlaylistError) _then)
      : super(_value, (v) => _then(v as CreatePlaylistError));

  @override
  CreatePlaylistError get _value => super._value as CreatePlaylistError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreatePlaylistError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreatePlaylistError implements CreatePlaylistError {
  const _$CreatePlaylistError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreatePlaylist.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePlaylistError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreatePlaylistErrorCopyWith<CreatePlaylistError> get copyWith =>
      _$CreatePlaylistErrorCopyWithImpl<CreatePlaylistError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Playlist playlist),
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
    Result successful(Playlist playlist),
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
    Result $default(CreatePlaylist$ value), {
    @required Result successful(CreatePlaylistSuccessful value),
    @required Result error(CreatePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePlaylist$ value), {
    Result successful(CreatePlaylistSuccessful value),
    Result error(CreatePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreatePlaylistError implements CreatePlaylist, ErrorAction {
  const factory CreatePlaylistError(Object error) = _$CreatePlaylistError;

  Object get error;
  $CreatePlaylistErrorCopyWith<CreatePlaylistError> get copyWith;
}

/// @nodoc
class _$GetPlaylistByIdTearOff {
  const _$GetPlaylistByIdTearOff();

// ignore: unused_element
  GetPlaylistById$ call(String id) {
    return GetPlaylistById$(
      id,
    );
  }

// ignore: unused_element
  GetPlaylistByIdSuccessful successful(Playlist playlist) {
    return GetPlaylistByIdSuccessful(
      playlist,
    );
  }

// ignore: unused_element
  GetPlaylistByIdError error(Object error) {
    return GetPlaylistByIdError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPlaylistById = _$GetPlaylistByIdTearOff();

/// @nodoc
mixin _$GetPlaylistById {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPlaylistById$ value), {
    @required Result successful(GetPlaylistByIdSuccessful value),
    @required Result error(GetPlaylistByIdError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistById$ value), {
    Result successful(GetPlaylistByIdSuccessful value),
    Result error(GetPlaylistByIdError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPlaylistByIdCopyWith<$Res> {
  factory $GetPlaylistByIdCopyWith(
          GetPlaylistById value, $Res Function(GetPlaylistById) then) =
      _$GetPlaylistByIdCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPlaylistByIdCopyWithImpl<$Res>
    implements $GetPlaylistByIdCopyWith<$Res> {
  _$GetPlaylistByIdCopyWithImpl(this._value, this._then);

  final GetPlaylistById _value;
  // ignore: unused_field
  final $Res Function(GetPlaylistById) _then;
}

/// @nodoc
abstract class $GetPlaylistById$CopyWith<$Res> {
  factory $GetPlaylistById$CopyWith(
          GetPlaylistById$ value, $Res Function(GetPlaylistById$) then) =
      _$GetPlaylistById$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetPlaylistById$CopyWithImpl<$Res>
    extends _$GetPlaylistByIdCopyWithImpl<$Res>
    implements $GetPlaylistById$CopyWith<$Res> {
  _$GetPlaylistById$CopyWithImpl(
      GetPlaylistById$ _value, $Res Function(GetPlaylistById$) _then)
      : super(_value, (v) => _then(v as GetPlaylistById$));

  @override
  GetPlaylistById$ get _value => super._value as GetPlaylistById$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetPlaylistById$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetPlaylistById$ implements GetPlaylistById$ {
  const _$GetPlaylistById$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'GetPlaylistById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistById$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetPlaylistById$CopyWith<GetPlaylistById$> get copyWith =>
      _$GetPlaylistById$CopyWithImpl<GetPlaylistById$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Playlist playlist),
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
    Result successful(Playlist playlist),
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
    Result $default(GetPlaylistById$ value), {
    @required Result successful(GetPlaylistByIdSuccessful value),
    @required Result error(GetPlaylistByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistById$ value), {
    Result successful(GetPlaylistByIdSuccessful value),
    Result error(GetPlaylistByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistById$ implements GetPlaylistById {
  const factory GetPlaylistById$(String id) = _$GetPlaylistById$;

  String get id;
  $GetPlaylistById$CopyWith<GetPlaylistById$> get copyWith;
}

/// @nodoc
abstract class $GetPlaylistByIdSuccessfulCopyWith<$Res> {
  factory $GetPlaylistByIdSuccessfulCopyWith(GetPlaylistByIdSuccessful value,
          $Res Function(GetPlaylistByIdSuccessful) then) =
      _$GetPlaylistByIdSuccessfulCopyWithImpl<$Res>;
  $Res call({Playlist playlist});
}

/// @nodoc
class _$GetPlaylistByIdSuccessfulCopyWithImpl<$Res>
    extends _$GetPlaylistByIdCopyWithImpl<$Res>
    implements $GetPlaylistByIdSuccessfulCopyWith<$Res> {
  _$GetPlaylistByIdSuccessfulCopyWithImpl(GetPlaylistByIdSuccessful _value,
      $Res Function(GetPlaylistByIdSuccessful) _then)
      : super(_value, (v) => _then(v as GetPlaylistByIdSuccessful));

  @override
  GetPlaylistByIdSuccessful get _value =>
      super._value as GetPlaylistByIdSuccessful;

  @override
  $Res call({
    Object playlist = freezed,
  }) {
    return _then(GetPlaylistByIdSuccessful(
      playlist == freezed ? _value.playlist : playlist as Playlist,
    ));
  }
}

/// @nodoc
class _$GetPlaylistByIdSuccessful implements GetPlaylistByIdSuccessful {
  const _$GetPlaylistByIdSuccessful(this.playlist) : assert(playlist != null);

  @override
  final Playlist playlist;

  @override
  String toString() {
    return 'GetPlaylistById.successful(playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistByIdSuccessful &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlist);

  @override
  $GetPlaylistByIdSuccessfulCopyWith<GetPlaylistByIdSuccessful> get copyWith =>
      _$GetPlaylistByIdSuccessfulCopyWithImpl<GetPlaylistByIdSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(playlist);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(playlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPlaylistById$ value), {
    @required Result successful(GetPlaylistByIdSuccessful value),
    @required Result error(GetPlaylistByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistById$ value), {
    Result successful(GetPlaylistByIdSuccessful value),
    Result error(GetPlaylistByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistByIdSuccessful implements GetPlaylistById {
  const factory GetPlaylistByIdSuccessful(Playlist playlist) =
      _$GetPlaylistByIdSuccessful;

  Playlist get playlist;
  $GetPlaylistByIdSuccessfulCopyWith<GetPlaylistByIdSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPlaylistByIdErrorCopyWith<$Res> {
  factory $GetPlaylistByIdErrorCopyWith(GetPlaylistByIdError value,
          $Res Function(GetPlaylistByIdError) then) =
      _$GetPlaylistByIdErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetPlaylistByIdErrorCopyWithImpl<$Res>
    extends _$GetPlaylistByIdCopyWithImpl<$Res>
    implements $GetPlaylistByIdErrorCopyWith<$Res> {
  _$GetPlaylistByIdErrorCopyWithImpl(
      GetPlaylistByIdError _value, $Res Function(GetPlaylistByIdError) _then)
      : super(_value, (v) => _then(v as GetPlaylistByIdError));

  @override
  GetPlaylistByIdError get _value => super._value as GetPlaylistByIdError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPlaylistByIdError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetPlaylistByIdError implements GetPlaylistByIdError {
  const _$GetPlaylistByIdError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetPlaylistById.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistByIdError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPlaylistByIdErrorCopyWith<GetPlaylistByIdError> get copyWith =>
      _$GetPlaylistByIdErrorCopyWithImpl<GetPlaylistByIdError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Playlist playlist),
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
    Result successful(Playlist playlist),
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
    Result $default(GetPlaylistById$ value), {
    @required Result successful(GetPlaylistByIdSuccessful value),
    @required Result error(GetPlaylistByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistById$ value), {
    Result successful(GetPlaylistByIdSuccessful value),
    Result error(GetPlaylistByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistByIdError implements GetPlaylistById, ErrorAction {
  const factory GetPlaylistByIdError(Object error) = _$GetPlaylistByIdError;

  Object get error;
  $GetPlaylistByIdErrorCopyWith<GetPlaylistByIdError> get copyWith;
}

/// @nodoc
class _$UpdatePlaylistTearOff {
  const _$UpdatePlaylistTearOff();

// ignore: unused_element
  UpdatePlaylist$ call(String id, {List<String> newVideos}) {
    return UpdatePlaylist$(
      id,
      newVideos: newVideos,
    );
  }

// ignore: unused_element
  UpdatePlaylistSuccessful successful(Playlist playlist) {
    return UpdatePlaylistSuccessful(
      playlist,
    );
  }

// ignore: unused_element
  UpdatePlaylistError error(Object error) {
    return UpdatePlaylistError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePlaylist = _$UpdatePlaylistTearOff();

/// @nodoc
mixin _$UpdatePlaylist {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    @required Result successful(UpdatePlaylistSuccessful value),
    @required Result error(UpdatePlaylistError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    Result successful(UpdatePlaylistSuccessful value),
    Result error(UpdatePlaylistError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdatePlaylistCopyWith<$Res> {
  factory $UpdatePlaylistCopyWith(
          UpdatePlaylist value, $Res Function(UpdatePlaylist) then) =
      _$UpdatePlaylistCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatePlaylistCopyWithImpl<$Res>
    implements $UpdatePlaylistCopyWith<$Res> {
  _$UpdatePlaylistCopyWithImpl(this._value, this._then);

  final UpdatePlaylist _value;
  // ignore: unused_field
  final $Res Function(UpdatePlaylist) _then;
}

/// @nodoc
abstract class $UpdatePlaylist$CopyWith<$Res> {
  factory $UpdatePlaylist$CopyWith(
          UpdatePlaylist$ value, $Res Function(UpdatePlaylist$) then) =
      _$UpdatePlaylist$CopyWithImpl<$Res>;
  $Res call({String id, List<String> newVideos});
}

/// @nodoc
class _$UpdatePlaylist$CopyWithImpl<$Res>
    extends _$UpdatePlaylistCopyWithImpl<$Res>
    implements $UpdatePlaylist$CopyWith<$Res> {
  _$UpdatePlaylist$CopyWithImpl(
      UpdatePlaylist$ _value, $Res Function(UpdatePlaylist$) _then)
      : super(_value, (v) => _then(v as UpdatePlaylist$));

  @override
  UpdatePlaylist$ get _value => super._value as UpdatePlaylist$;

  @override
  $Res call({
    Object id = freezed,
    Object newVideos = freezed,
  }) {
    return _then(UpdatePlaylist$(
      id == freezed ? _value.id : id as String,
      newVideos:
          newVideos == freezed ? _value.newVideos : newVideos as List<String>,
    ));
  }
}

/// @nodoc
class _$UpdatePlaylist$ implements UpdatePlaylist$ {
  const _$UpdatePlaylist$(this.id, {this.newVideos}) : assert(id != null);

  @override
  final String id;
  @override
  final List<String> newVideos;

  @override
  String toString() {
    return 'UpdatePlaylist(id: $id, newVideos: $newVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePlaylist$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.newVideos, newVideos) ||
                const DeepCollectionEquality()
                    .equals(other.newVideos, newVideos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(newVideos);

  @override
  $UpdatePlaylist$CopyWith<UpdatePlaylist$> get copyWith =>
      _$UpdatePlaylist$CopyWithImpl<UpdatePlaylist$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(id, newVideos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id, newVideos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    @required Result successful(UpdatePlaylistSuccessful value),
    @required Result error(UpdatePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    Result successful(UpdatePlaylistSuccessful value),
    Result error(UpdatePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdatePlaylist$ implements UpdatePlaylist {
  const factory UpdatePlaylist$(String id, {List<String> newVideos}) =
      _$UpdatePlaylist$;

  String get id;
  List<String> get newVideos;
  $UpdatePlaylist$CopyWith<UpdatePlaylist$> get copyWith;
}

/// @nodoc
abstract class $UpdatePlaylistSuccessfulCopyWith<$Res> {
  factory $UpdatePlaylistSuccessfulCopyWith(UpdatePlaylistSuccessful value,
          $Res Function(UpdatePlaylistSuccessful) then) =
      _$UpdatePlaylistSuccessfulCopyWithImpl<$Res>;
  $Res call({Playlist playlist});
}

/// @nodoc
class _$UpdatePlaylistSuccessfulCopyWithImpl<$Res>
    extends _$UpdatePlaylistCopyWithImpl<$Res>
    implements $UpdatePlaylistSuccessfulCopyWith<$Res> {
  _$UpdatePlaylistSuccessfulCopyWithImpl(UpdatePlaylistSuccessful _value,
      $Res Function(UpdatePlaylistSuccessful) _then)
      : super(_value, (v) => _then(v as UpdatePlaylistSuccessful));

  @override
  UpdatePlaylistSuccessful get _value =>
      super._value as UpdatePlaylistSuccessful;

  @override
  $Res call({
    Object playlist = freezed,
  }) {
    return _then(UpdatePlaylistSuccessful(
      playlist == freezed ? _value.playlist : playlist as Playlist,
    ));
  }
}

/// @nodoc
class _$UpdatePlaylistSuccessful implements UpdatePlaylistSuccessful {
  const _$UpdatePlaylistSuccessful(this.playlist) : assert(playlist != null);

  @override
  final Playlist playlist;

  @override
  String toString() {
    return 'UpdatePlaylist.successful(playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePlaylistSuccessful &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlist);

  @override
  $UpdatePlaylistSuccessfulCopyWith<UpdatePlaylistSuccessful> get copyWith =>
      _$UpdatePlaylistSuccessfulCopyWithImpl<UpdatePlaylistSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    @required Result successful(Playlist playlist),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(playlist);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    Result successful(Playlist playlist),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(playlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    @required Result successful(UpdatePlaylistSuccessful value),
    @required Result error(UpdatePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    Result successful(UpdatePlaylistSuccessful value),
    Result error(UpdatePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdatePlaylistSuccessful implements UpdatePlaylist {
  const factory UpdatePlaylistSuccessful(Playlist playlist) =
      _$UpdatePlaylistSuccessful;

  Playlist get playlist;
  $UpdatePlaylistSuccessfulCopyWith<UpdatePlaylistSuccessful> get copyWith;
}

/// @nodoc
abstract class $UpdatePlaylistErrorCopyWith<$Res> {
  factory $UpdatePlaylistErrorCopyWith(
          UpdatePlaylistError value, $Res Function(UpdatePlaylistError) then) =
      _$UpdatePlaylistErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdatePlaylistErrorCopyWithImpl<$Res>
    extends _$UpdatePlaylistCopyWithImpl<$Res>
    implements $UpdatePlaylistErrorCopyWith<$Res> {
  _$UpdatePlaylistErrorCopyWithImpl(
      UpdatePlaylistError _value, $Res Function(UpdatePlaylistError) _then)
      : super(_value, (v) => _then(v as UpdatePlaylistError));

  @override
  UpdatePlaylistError get _value => super._value as UpdatePlaylistError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdatePlaylistError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdatePlaylistError implements UpdatePlaylistError {
  const _$UpdatePlaylistError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdatePlaylist.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePlaylistError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdatePlaylistErrorCopyWith<UpdatePlaylistError> get copyWith =>
      _$UpdatePlaylistErrorCopyWithImpl<UpdatePlaylistError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, List<String> newVideos), {
    @required Result successful(Playlist playlist),
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
    Result $default(String id, List<String> newVideos), {
    Result successful(Playlist playlist),
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
    Result $default(UpdatePlaylist$ value), {
    @required Result successful(UpdatePlaylistSuccessful value),
    @required Result error(UpdatePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdatePlaylist$ value), {
    Result successful(UpdatePlaylistSuccessful value),
    Result error(UpdatePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdatePlaylistError implements UpdatePlaylist, ErrorAction {
  const factory UpdatePlaylistError(Object error) = _$UpdatePlaylistError;

  Object get error;
  $UpdatePlaylistErrorCopyWith<UpdatePlaylistError> get copyWith;
}

/// @nodoc
class _$DeletePlaylistTearOff {
  const _$DeletePlaylistTearOff();

// ignore: unused_element
  DeletePlaylist$ call(String id) {
    return DeletePlaylist$(
      id,
    );
  }

// ignore: unused_element
  DeletePlaylistSuccessful successful() {
    return const DeletePlaylistSuccessful();
  }

// ignore: unused_element
  DeletePlaylistError error(Object error) {
    return DeletePlaylistError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeletePlaylist = _$DeletePlaylistTearOff();

/// @nodoc
mixin _$DeletePlaylist {
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
    Result $default(DeletePlaylist$ value), {
    @required Result successful(DeletePlaylistSuccessful value),
    @required Result error(DeletePlaylistError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeletePlaylist$ value), {
    Result successful(DeletePlaylistSuccessful value),
    Result error(DeletePlaylistError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DeletePlaylistCopyWith<$Res> {
  factory $DeletePlaylistCopyWith(
          DeletePlaylist value, $Res Function(DeletePlaylist) then) =
      _$DeletePlaylistCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletePlaylistCopyWithImpl<$Res>
    implements $DeletePlaylistCopyWith<$Res> {
  _$DeletePlaylistCopyWithImpl(this._value, this._then);

  final DeletePlaylist _value;
  // ignore: unused_field
  final $Res Function(DeletePlaylist) _then;
}

/// @nodoc
abstract class $DeletePlaylist$CopyWith<$Res> {
  factory $DeletePlaylist$CopyWith(
          DeletePlaylist$ value, $Res Function(DeletePlaylist$) then) =
      _$DeletePlaylist$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeletePlaylist$CopyWithImpl<$Res>
    extends _$DeletePlaylistCopyWithImpl<$Res>
    implements $DeletePlaylist$CopyWith<$Res> {
  _$DeletePlaylist$CopyWithImpl(
      DeletePlaylist$ _value, $Res Function(DeletePlaylist$) _then)
      : super(_value, (v) => _then(v as DeletePlaylist$));

  @override
  DeletePlaylist$ get _value => super._value as DeletePlaylist$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(DeletePlaylist$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$DeletePlaylist$ implements DeletePlaylist$ {
  const _$DeletePlaylist$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'DeletePlaylist(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletePlaylist$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $DeletePlaylist$CopyWith<DeletePlaylist$> get copyWith =>
      _$DeletePlaylist$CopyWithImpl<DeletePlaylist$>(this, _$identity);

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
    Result $default(DeletePlaylist$ value), {
    @required Result successful(DeletePlaylistSuccessful value),
    @required Result error(DeletePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeletePlaylist$ value), {
    Result successful(DeletePlaylistSuccessful value),
    Result error(DeletePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DeletePlaylist$ implements DeletePlaylist {
  const factory DeletePlaylist$(String id) = _$DeletePlaylist$;

  String get id;
  $DeletePlaylist$CopyWith<DeletePlaylist$> get copyWith;
}

/// @nodoc
abstract class $DeletePlaylistSuccessfulCopyWith<$Res> {
  factory $DeletePlaylistSuccessfulCopyWith(DeletePlaylistSuccessful value,
          $Res Function(DeletePlaylistSuccessful) then) =
      _$DeletePlaylistSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletePlaylistSuccessfulCopyWithImpl<$Res>
    extends _$DeletePlaylistCopyWithImpl<$Res>
    implements $DeletePlaylistSuccessfulCopyWith<$Res> {
  _$DeletePlaylistSuccessfulCopyWithImpl(DeletePlaylistSuccessful _value,
      $Res Function(DeletePlaylistSuccessful) _then)
      : super(_value, (v) => _then(v as DeletePlaylistSuccessful));

  @override
  DeletePlaylistSuccessful get _value =>
      super._value as DeletePlaylistSuccessful;
}

/// @nodoc
class _$DeletePlaylistSuccessful implements DeletePlaylistSuccessful {
  const _$DeletePlaylistSuccessful();

  @override
  String toString() {
    return 'DeletePlaylist.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeletePlaylistSuccessful);
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
    Result $default(DeletePlaylist$ value), {
    @required Result successful(DeletePlaylistSuccessful value),
    @required Result error(DeletePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeletePlaylist$ value), {
    Result successful(DeletePlaylistSuccessful value),
    Result error(DeletePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class DeletePlaylistSuccessful implements DeletePlaylist {
  const factory DeletePlaylistSuccessful() = _$DeletePlaylistSuccessful;
}

/// @nodoc
abstract class $DeletePlaylistErrorCopyWith<$Res> {
  factory $DeletePlaylistErrorCopyWith(
          DeletePlaylistError value, $Res Function(DeletePlaylistError) then) =
      _$DeletePlaylistErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$DeletePlaylistErrorCopyWithImpl<$Res>
    extends _$DeletePlaylistCopyWithImpl<$Res>
    implements $DeletePlaylistErrorCopyWith<$Res> {
  _$DeletePlaylistErrorCopyWithImpl(
      DeletePlaylistError _value, $Res Function(DeletePlaylistError) _then)
      : super(_value, (v) => _then(v as DeletePlaylistError));

  @override
  DeletePlaylistError get _value => super._value as DeletePlaylistError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(DeletePlaylistError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$DeletePlaylistError implements DeletePlaylistError {
  const _$DeletePlaylistError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'DeletePlaylist.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletePlaylistError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $DeletePlaylistErrorCopyWith<DeletePlaylistError> get copyWith =>
      _$DeletePlaylistErrorCopyWithImpl<DeletePlaylistError>(this, _$identity);

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
    Result $default(DeletePlaylist$ value), {
    @required Result successful(DeletePlaylistSuccessful value),
    @required Result error(DeletePlaylistError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeletePlaylist$ value), {
    Result successful(DeletePlaylistSuccessful value),
    Result error(DeletePlaylistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeletePlaylistError implements DeletePlaylist, ErrorAction {
  const factory DeletePlaylistError(Object error) = _$DeletePlaylistError;

  Object get error;
  $DeletePlaylistErrorCopyWith<DeletePlaylistError> get copyWith;
}

/// @nodoc
class _$UpdatePlaylistInfoTearOff {
  const _$UpdatePlaylistInfoTearOff();

// ignore: unused_element
  UpdatePlaylistInfo$ call(
      {String addVideoRef,
      String removeVideoRef,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title,
      String category}) {
    return UpdatePlaylistInfo$(
      addVideoRef: addVideoRef,
      removeVideoRef: removeVideoRef,
      addThumbnail: addThumbnail,
      removeThumbnail: removeThumbnail,
      description: description,
      title: title,
      category: category,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePlaylistInfo = _$UpdatePlaylistInfoTearOff();

/// @nodoc
mixin _$UpdatePlaylistInfo {
  String get addVideoRef;
  String get removeVideoRef;
  String get addThumbnail;
  String get removeThumbnail;
  String get description;
  String get title;
  String get category;

  $UpdatePlaylistInfoCopyWith<UpdatePlaylistInfo> get copyWith;
}

/// @nodoc
abstract class $UpdatePlaylistInfoCopyWith<$Res> {
  factory $UpdatePlaylistInfoCopyWith(
          UpdatePlaylistInfo value, $Res Function(UpdatePlaylistInfo) then) =
      _$UpdatePlaylistInfoCopyWithImpl<$Res>;
  $Res call(
      {String addVideoRef,
      String removeVideoRef,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title,
      String category});
}

/// @nodoc
class _$UpdatePlaylistInfoCopyWithImpl<$Res>
    implements $UpdatePlaylistInfoCopyWith<$Res> {
  _$UpdatePlaylistInfoCopyWithImpl(this._value, this._then);

  final UpdatePlaylistInfo _value;
  // ignore: unused_field
  final $Res Function(UpdatePlaylistInfo) _then;

  @override
  $Res call({
    Object addVideoRef = freezed,
    Object removeVideoRef = freezed,
    Object addThumbnail = freezed,
    Object removeThumbnail = freezed,
    Object description = freezed,
    Object title = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      addVideoRef:
          addVideoRef == freezed ? _value.addVideoRef : addVideoRef as String,
      removeVideoRef: removeVideoRef == freezed
          ? _value.removeVideoRef
          : removeVideoRef as String,
      addThumbnail: addThumbnail == freezed
          ? _value.addThumbnail
          : addThumbnail as String,
      removeThumbnail: removeThumbnail == freezed
          ? _value.removeThumbnail
          : removeThumbnail as String,
      description:
          description == freezed ? _value.description : description as String,
      title: title == freezed ? _value.title : title as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
abstract class $UpdatePlaylistInfo$CopyWith<$Res>
    implements $UpdatePlaylistInfoCopyWith<$Res> {
  factory $UpdatePlaylistInfo$CopyWith(
          UpdatePlaylistInfo$ value, $Res Function(UpdatePlaylistInfo$) then) =
      _$UpdatePlaylistInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String addVideoRef,
      String removeVideoRef,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title,
      String category});
}

/// @nodoc
class _$UpdatePlaylistInfo$CopyWithImpl<$Res>
    extends _$UpdatePlaylistInfoCopyWithImpl<$Res>
    implements $UpdatePlaylistInfo$CopyWith<$Res> {
  _$UpdatePlaylistInfo$CopyWithImpl(
      UpdatePlaylistInfo$ _value, $Res Function(UpdatePlaylistInfo$) _then)
      : super(_value, (v) => _then(v as UpdatePlaylistInfo$));

  @override
  UpdatePlaylistInfo$ get _value => super._value as UpdatePlaylistInfo$;

  @override
  $Res call({
    Object addVideoRef = freezed,
    Object removeVideoRef = freezed,
    Object addThumbnail = freezed,
    Object removeThumbnail = freezed,
    Object description = freezed,
    Object title = freezed,
    Object category = freezed,
  }) {
    return _then(UpdatePlaylistInfo$(
      addVideoRef:
          addVideoRef == freezed ? _value.addVideoRef : addVideoRef as String,
      removeVideoRef: removeVideoRef == freezed
          ? _value.removeVideoRef
          : removeVideoRef as String,
      addThumbnail: addThumbnail == freezed
          ? _value.addThumbnail
          : addThumbnail as String,
      removeThumbnail: removeThumbnail == freezed
          ? _value.removeThumbnail
          : removeThumbnail as String,
      description:
          description == freezed ? _value.description : description as String,
      title: title == freezed ? _value.title : title as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
class _$UpdatePlaylistInfo$ implements UpdatePlaylistInfo$ {
  const _$UpdatePlaylistInfo$(
      {this.addVideoRef,
      this.removeVideoRef,
      this.addThumbnail,
      this.removeThumbnail,
      this.description,
      this.title,
      this.category});

  @override
  final String addVideoRef;
  @override
  final String removeVideoRef;
  @override
  final String addThumbnail;
  @override
  final String removeThumbnail;
  @override
  final String description;
  @override
  final String title;
  @override
  final String category;

  @override
  String toString() {
    return 'UpdatePlaylistInfo(addVideoRef: $addVideoRef, removeVideoRef: $removeVideoRef, addThumbnail: $addThumbnail, removeThumbnail: $removeThumbnail, description: $description, title: $title, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePlaylistInfo$ &&
            (identical(other.addVideoRef, addVideoRef) ||
                const DeepCollectionEquality()
                    .equals(other.addVideoRef, addVideoRef)) &&
            (identical(other.removeVideoRef, removeVideoRef) ||
                const DeepCollectionEquality()
                    .equals(other.removeVideoRef, removeVideoRef)) &&
            (identical(other.addThumbnail, addThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.addThumbnail, addThumbnail)) &&
            (identical(other.removeThumbnail, removeThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.removeThumbnail, removeThumbnail)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addVideoRef) ^
      const DeepCollectionEquality().hash(removeVideoRef) ^
      const DeepCollectionEquality().hash(addThumbnail) ^
      const DeepCollectionEquality().hash(removeThumbnail) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(category);

  @override
  $UpdatePlaylistInfo$CopyWith<UpdatePlaylistInfo$> get copyWith =>
      _$UpdatePlaylistInfo$CopyWithImpl<UpdatePlaylistInfo$>(this, _$identity);
}

abstract class UpdatePlaylistInfo$ implements UpdatePlaylistInfo {
  const factory UpdatePlaylistInfo$(
      {String addVideoRef,
      String removeVideoRef,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title,
      String category}) = _$UpdatePlaylistInfo$;

  @override
  String get addVideoRef;
  @override
  String get removeVideoRef;
  @override
  String get addThumbnail;
  @override
  String get removeThumbnail;
  @override
  String get description;
  @override
  String get title;
  @override
  String get category;
  @override
  $UpdatePlaylistInfo$CopyWith<UpdatePlaylistInfo$> get copyWith;
}

/// @nodoc
class _$SearchPlaylistsTearOff {
  const _$SearchPlaylistsTearOff();

// ignore: unused_element
  SearchPlaylists$ call(String query) {
    return SearchPlaylists$(
      query,
    );
  }

// ignore: unused_element
  SearchPlaylistsSuccessful successful(List<Playlist> playlists) {
    return SearchPlaylistsSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  SearchPlaylistsError error(Object error) {
    return SearchPlaylistsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchPlaylists = _$SearchPlaylistsTearOff();

/// @nodoc
mixin _$SearchPlaylists {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    @required Result successful(SearchPlaylistsSuccessful value),
    @required Result error(SearchPlaylistsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    Result successful(SearchPlaylistsSuccessful value),
    Result error(SearchPlaylistsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchPlaylistsCopyWith<$Res> {
  factory $SearchPlaylistsCopyWith(
          SearchPlaylists value, $Res Function(SearchPlaylists) then) =
      _$SearchPlaylistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPlaylistsCopyWithImpl<$Res>
    implements $SearchPlaylistsCopyWith<$Res> {
  _$SearchPlaylistsCopyWithImpl(this._value, this._then);

  final SearchPlaylists _value;
  // ignore: unused_field
  final $Res Function(SearchPlaylists) _then;
}

/// @nodoc
abstract class $SearchPlaylists$CopyWith<$Res> {
  factory $SearchPlaylists$CopyWith(
          SearchPlaylists$ value, $Res Function(SearchPlaylists$) then) =
      _$SearchPlaylists$CopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchPlaylists$CopyWithImpl<$Res>
    extends _$SearchPlaylistsCopyWithImpl<$Res>
    implements $SearchPlaylists$CopyWith<$Res> {
  _$SearchPlaylists$CopyWithImpl(
      SearchPlaylists$ _value, $Res Function(SearchPlaylists$) _then)
      : super(_value, (v) => _then(v as SearchPlaylists$));

  @override
  SearchPlaylists$ get _value => super._value as SearchPlaylists$;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchPlaylists$(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchPlaylists$ implements SearchPlaylists$ {
  const _$SearchPlaylists$(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchPlaylists(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPlaylists$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchPlaylists$CopyWith<SearchPlaylists$> get copyWith =>
      _$SearchPlaylists$CopyWithImpl<SearchPlaylists$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    @required Result successful(SearchPlaylistsSuccessful value),
    @required Result error(SearchPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    Result successful(SearchPlaylistsSuccessful value),
    Result error(SearchPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchPlaylists$ implements SearchPlaylists {
  const factory SearchPlaylists$(String query) = _$SearchPlaylists$;

  String get query;
  $SearchPlaylists$CopyWith<SearchPlaylists$> get copyWith;
}

/// @nodoc
abstract class $SearchPlaylistsSuccessfulCopyWith<$Res> {
  factory $SearchPlaylistsSuccessfulCopyWith(SearchPlaylistsSuccessful value,
          $Res Function(SearchPlaylistsSuccessful) then) =
      _$SearchPlaylistsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$SearchPlaylistsSuccessfulCopyWithImpl<$Res>
    extends _$SearchPlaylistsCopyWithImpl<$Res>
    implements $SearchPlaylistsSuccessfulCopyWith<$Res> {
  _$SearchPlaylistsSuccessfulCopyWithImpl(SearchPlaylistsSuccessful _value,
      $Res Function(SearchPlaylistsSuccessful) _then)
      : super(_value, (v) => _then(v as SearchPlaylistsSuccessful));

  @override
  SearchPlaylistsSuccessful get _value =>
      super._value as SearchPlaylistsSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(SearchPlaylistsSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$SearchPlaylistsSuccessful implements SearchPlaylistsSuccessful {
  const _$SearchPlaylistsSuccessful(this.playlists) : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'SearchPlaylists.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPlaylistsSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $SearchPlaylistsSuccessfulCopyWith<SearchPlaylistsSuccessful> get copyWith =>
      _$SearchPlaylistsSuccessfulCopyWithImpl<SearchPlaylistsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(playlists);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(playlists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    @required Result successful(SearchPlaylistsSuccessful value),
    @required Result error(SearchPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    Result successful(SearchPlaylistsSuccessful value),
    Result error(SearchPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchPlaylistsSuccessful implements SearchPlaylists {
  const factory SearchPlaylistsSuccessful(List<Playlist> playlists) =
      _$SearchPlaylistsSuccessful;

  List<Playlist> get playlists;
  $SearchPlaylistsSuccessfulCopyWith<SearchPlaylistsSuccessful> get copyWith;
}

/// @nodoc
abstract class $SearchPlaylistsErrorCopyWith<$Res> {
  factory $SearchPlaylistsErrorCopyWith(SearchPlaylistsError value,
          $Res Function(SearchPlaylistsError) then) =
      _$SearchPlaylistsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SearchPlaylistsErrorCopyWithImpl<$Res>
    extends _$SearchPlaylistsCopyWithImpl<$Res>
    implements $SearchPlaylistsErrorCopyWith<$Res> {
  _$SearchPlaylistsErrorCopyWithImpl(
      SearchPlaylistsError _value, $Res Function(SearchPlaylistsError) _then)
      : super(_value, (v) => _then(v as SearchPlaylistsError));

  @override
  SearchPlaylistsError get _value => super._value as SearchPlaylistsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SearchPlaylistsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchPlaylistsError implements SearchPlaylistsError {
  const _$SearchPlaylistsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SearchPlaylists.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchPlaylistsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SearchPlaylistsErrorCopyWith<SearchPlaylistsError> get copyWith =>
      _$SearchPlaylistsErrorCopyWithImpl<SearchPlaylistsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Playlist> playlists),
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
    Result $default(String query), {
    Result successful(List<Playlist> playlists),
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
    Result $default(SearchPlaylists$ value), {
    @required Result successful(SearchPlaylistsSuccessful value),
    @required Result error(SearchPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchPlaylists$ value), {
    Result successful(SearchPlaylistsSuccessful value),
    Result error(SearchPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchPlaylistsError implements SearchPlaylists, ErrorAction {
  const factory SearchPlaylistsError(Object error) = _$SearchPlaylistsError;

  Object get error;
  $SearchPlaylistsErrorCopyWith<SearchPlaylistsError> get copyWith;
}

/// @nodoc
class _$GetPlaylistsTearOff {
  const _$GetPlaylistsTearOff();

// ignore: unused_element
  GetPlaylists$ call({String userId, String category}) {
    return GetPlaylists$(
      userId: userId,
      category: category,
    );
  }

// ignore: unused_element
  GetPlaylistsSuccessful successful(List<Playlist> playlists) {
    return GetPlaylistsSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  GetPlaylistsError error(Object error) {
    return GetPlaylistsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPlaylists = _$GetPlaylistsTearOff();

/// @nodoc
mixin _$GetPlaylists {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, String category), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String userId, String category), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPlaylists$ value), {
    @required Result successful(GetPlaylistsSuccessful value),
    @required Result error(GetPlaylistsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylists$ value), {
    Result successful(GetPlaylistsSuccessful value),
    Result error(GetPlaylistsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPlaylistsCopyWith<$Res> {
  factory $GetPlaylistsCopyWith(
          GetPlaylists value, $Res Function(GetPlaylists) then) =
      _$GetPlaylistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPlaylistsCopyWithImpl<$Res> implements $GetPlaylistsCopyWith<$Res> {
  _$GetPlaylistsCopyWithImpl(this._value, this._then);

  final GetPlaylists _value;
  // ignore: unused_field
  final $Res Function(GetPlaylists) _then;
}

/// @nodoc
abstract class $GetPlaylists$CopyWith<$Res> {
  factory $GetPlaylists$CopyWith(
          GetPlaylists$ value, $Res Function(GetPlaylists$) then) =
      _$GetPlaylists$CopyWithImpl<$Res>;
  $Res call({String userId, String category});
}

/// @nodoc
class _$GetPlaylists$CopyWithImpl<$Res> extends _$GetPlaylistsCopyWithImpl<$Res>
    implements $GetPlaylists$CopyWith<$Res> {
  _$GetPlaylists$CopyWithImpl(
      GetPlaylists$ _value, $Res Function(GetPlaylists$) _then)
      : super(_value, (v) => _then(v as GetPlaylists$));

  @override
  GetPlaylists$ get _value => super._value as GetPlaylists$;

  @override
  $Res call({
    Object userId = freezed,
    Object category = freezed,
  }) {
    return _then(GetPlaylists$(
      userId: userId == freezed ? _value.userId : userId as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
class _$GetPlaylists$ implements GetPlaylists$ {
  const _$GetPlaylists$({this.userId, this.category});

  @override
  final String userId;
  @override
  final String category;

  @override
  String toString() {
    return 'GetPlaylists(userId: $userId, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylists$ &&
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
  $GetPlaylists$CopyWith<GetPlaylists$> get copyWith =>
      _$GetPlaylists$CopyWithImpl<GetPlaylists$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, String category), {
    @required Result successful(List<Playlist> playlists),
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
    Result $default(String userId, String category), {
    Result successful(List<Playlist> playlists),
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
    Result $default(GetPlaylists$ value), {
    @required Result successful(GetPlaylistsSuccessful value),
    @required Result error(GetPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylists$ value), {
    Result successful(GetPlaylistsSuccessful value),
    Result error(GetPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlaylists$ implements GetPlaylists {
  const factory GetPlaylists$({String userId, String category}) =
      _$GetPlaylists$;

  String get userId;
  String get category;
  $GetPlaylists$CopyWith<GetPlaylists$> get copyWith;
}

/// @nodoc
abstract class $GetPlaylistsSuccessfulCopyWith<$Res> {
  factory $GetPlaylistsSuccessfulCopyWith(GetPlaylistsSuccessful value,
          $Res Function(GetPlaylistsSuccessful) then) =
      _$GetPlaylistsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$GetPlaylistsSuccessfulCopyWithImpl<$Res>
    extends _$GetPlaylistsCopyWithImpl<$Res>
    implements $GetPlaylistsSuccessfulCopyWith<$Res> {
  _$GetPlaylistsSuccessfulCopyWithImpl(GetPlaylistsSuccessful _value,
      $Res Function(GetPlaylistsSuccessful) _then)
      : super(_value, (v) => _then(v as GetPlaylistsSuccessful));

  @override
  GetPlaylistsSuccessful get _value => super._value as GetPlaylistsSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(GetPlaylistsSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$GetPlaylistsSuccessful implements GetPlaylistsSuccessful {
  const _$GetPlaylistsSuccessful(this.playlists) : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'GetPlaylists.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistsSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $GetPlaylistsSuccessfulCopyWith<GetPlaylistsSuccessful> get copyWith =>
      _$GetPlaylistsSuccessfulCopyWithImpl<GetPlaylistsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, String category), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(playlists);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String userId, String category), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(playlists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPlaylists$ value), {
    @required Result successful(GetPlaylistsSuccessful value),
    @required Result error(GetPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylists$ value), {
    Result successful(GetPlaylistsSuccessful value),
    Result error(GetPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistsSuccessful implements GetPlaylists {
  const factory GetPlaylistsSuccessful(List<Playlist> playlists) =
      _$GetPlaylistsSuccessful;

  List<Playlist> get playlists;
  $GetPlaylistsSuccessfulCopyWith<GetPlaylistsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPlaylistsErrorCopyWith<$Res> {
  factory $GetPlaylistsErrorCopyWith(
          GetPlaylistsError value, $Res Function(GetPlaylistsError) then) =
      _$GetPlaylistsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetPlaylistsErrorCopyWithImpl<$Res>
    extends _$GetPlaylistsCopyWithImpl<$Res>
    implements $GetPlaylistsErrorCopyWith<$Res> {
  _$GetPlaylistsErrorCopyWithImpl(
      GetPlaylistsError _value, $Res Function(GetPlaylistsError) _then)
      : super(_value, (v) => _then(v as GetPlaylistsError));

  @override
  GetPlaylistsError get _value => super._value as GetPlaylistsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPlaylistsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetPlaylistsError implements GetPlaylistsError {
  const _$GetPlaylistsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetPlaylists.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPlaylistsErrorCopyWith<GetPlaylistsError> get copyWith =>
      _$GetPlaylistsErrorCopyWithImpl<GetPlaylistsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String userId, String category), {
    @required Result successful(List<Playlist> playlists),
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
    Result $default(String userId, String category), {
    Result successful(List<Playlist> playlists),
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
    Result $default(GetPlaylists$ value), {
    @required Result successful(GetPlaylistsSuccessful value),
    @required Result error(GetPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylists$ value), {
    Result successful(GetPlaylistsSuccessful value),
    Result error(GetPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistsError implements GetPlaylists, ErrorAction {
  const factory GetPlaylistsError(Object error) = _$GetPlaylistsError;

  Object get error;
  $GetPlaylistsErrorCopyWith<GetPlaylistsError> get copyWith;
}
