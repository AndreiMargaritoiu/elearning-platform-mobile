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
class _$GetAllPlaylistsTearOff {
  const _$GetAllPlaylistsTearOff();

// ignore: unused_element
  GetAllPlaylists$ call() {
    return const GetAllPlaylists$();
  }

// ignore: unused_element
  GetAllPlaylistsSuccessful successful(List<Playlist> playlists) {
    return GetAllPlaylistsSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  GetAllPlaylistsError error(Object error) {
    return GetAllPlaylistsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetAllPlaylists = _$GetAllPlaylistsTearOff();

/// @nodoc
mixin _$GetAllPlaylists {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetAllPlaylists$ value), {
    @required Result successful(GetAllPlaylistsSuccessful value),
    @required Result error(GetAllPlaylistsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllPlaylists$ value), {
    Result successful(GetAllPlaylistsSuccessful value),
    Result error(GetAllPlaylistsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetAllPlaylistsCopyWith<$Res> {
  factory $GetAllPlaylistsCopyWith(
          GetAllPlaylists value, $Res Function(GetAllPlaylists) then) =
      _$GetAllPlaylistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllPlaylistsCopyWithImpl<$Res>
    implements $GetAllPlaylistsCopyWith<$Res> {
  _$GetAllPlaylistsCopyWithImpl(this._value, this._then);

  final GetAllPlaylists _value;
  // ignore: unused_field
  final $Res Function(GetAllPlaylists) _then;
}

/// @nodoc
abstract class $GetAllPlaylists$CopyWith<$Res> {
  factory $GetAllPlaylists$CopyWith(
          GetAllPlaylists$ value, $Res Function(GetAllPlaylists$) then) =
      _$GetAllPlaylists$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllPlaylists$CopyWithImpl<$Res>
    extends _$GetAllPlaylistsCopyWithImpl<$Res>
    implements $GetAllPlaylists$CopyWith<$Res> {
  _$GetAllPlaylists$CopyWithImpl(
      GetAllPlaylists$ _value, $Res Function(GetAllPlaylists$) _then)
      : super(_value, (v) => _then(v as GetAllPlaylists$));

  @override
  GetAllPlaylists$ get _value => super._value as GetAllPlaylists$;
}

/// @nodoc
class _$GetAllPlaylists$ implements GetAllPlaylists$ {
  const _$GetAllPlaylists$();

  @override
  String toString() {
    return 'GetAllPlaylists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllPlaylists$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Playlist> playlists),
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
    Result successful(List<Playlist> playlists),
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
    Result $default(GetAllPlaylists$ value), {
    @required Result successful(GetAllPlaylistsSuccessful value),
    @required Result error(GetAllPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllPlaylists$ value), {
    Result successful(GetAllPlaylistsSuccessful value),
    Result error(GetAllPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetAllPlaylists$ implements GetAllPlaylists {
  const factory GetAllPlaylists$() = _$GetAllPlaylists$;
}

/// @nodoc
abstract class $GetAllPlaylistsSuccessfulCopyWith<$Res> {
  factory $GetAllPlaylistsSuccessfulCopyWith(GetAllPlaylistsSuccessful value,
          $Res Function(GetAllPlaylistsSuccessful) then) =
      _$GetAllPlaylistsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$GetAllPlaylistsSuccessfulCopyWithImpl<$Res>
    extends _$GetAllPlaylistsCopyWithImpl<$Res>
    implements $GetAllPlaylistsSuccessfulCopyWith<$Res> {
  _$GetAllPlaylistsSuccessfulCopyWithImpl(GetAllPlaylistsSuccessful _value,
      $Res Function(GetAllPlaylistsSuccessful) _then)
      : super(_value, (v) => _then(v as GetAllPlaylistsSuccessful));

  @override
  GetAllPlaylistsSuccessful get _value =>
      super._value as GetAllPlaylistsSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(GetAllPlaylistsSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$GetAllPlaylistsSuccessful implements GetAllPlaylistsSuccessful {
  const _$GetAllPlaylistsSuccessful(this.playlists) : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'GetAllPlaylists.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllPlaylistsSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $GetAllPlaylistsSuccessfulCopyWith<GetAllPlaylistsSuccessful> get copyWith =>
      _$GetAllPlaylistsSuccessfulCopyWithImpl<GetAllPlaylistsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(GetAllPlaylists$ value), {
    @required Result successful(GetAllPlaylistsSuccessful value),
    @required Result error(GetAllPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllPlaylists$ value), {
    Result successful(GetAllPlaylistsSuccessful value),
    Result error(GetAllPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetAllPlaylistsSuccessful implements GetAllPlaylists {
  const factory GetAllPlaylistsSuccessful(List<Playlist> playlists) =
      _$GetAllPlaylistsSuccessful;

  List<Playlist> get playlists;
  $GetAllPlaylistsSuccessfulCopyWith<GetAllPlaylistsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetAllPlaylistsErrorCopyWith<$Res> {
  factory $GetAllPlaylistsErrorCopyWith(GetAllPlaylistsError value,
          $Res Function(GetAllPlaylistsError) then) =
      _$GetAllPlaylistsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetAllPlaylistsErrorCopyWithImpl<$Res>
    extends _$GetAllPlaylistsCopyWithImpl<$Res>
    implements $GetAllPlaylistsErrorCopyWith<$Res> {
  _$GetAllPlaylistsErrorCopyWithImpl(
      GetAllPlaylistsError _value, $Res Function(GetAllPlaylistsError) _then)
      : super(_value, (v) => _then(v as GetAllPlaylistsError));

  @override
  GetAllPlaylistsError get _value => super._value as GetAllPlaylistsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetAllPlaylistsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetAllPlaylistsError implements GetAllPlaylistsError {
  const _$GetAllPlaylistsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetAllPlaylists.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllPlaylistsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetAllPlaylistsErrorCopyWith<GetAllPlaylistsError> get copyWith =>
      _$GetAllPlaylistsErrorCopyWithImpl<GetAllPlaylistsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(GetAllPlaylists$ value), {
    @required Result successful(GetAllPlaylistsSuccessful value),
    @required Result error(GetAllPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetAllPlaylists$ value), {
    Result successful(GetAllPlaylistsSuccessful value),
    Result error(GetAllPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetAllPlaylistsError implements GetAllPlaylists, ErrorAction {
  const factory GetAllPlaylistsError(Object error) = _$GetAllPlaylistsError;

  Object get error;
  $GetAllPlaylistsErrorCopyWith<GetAllPlaylistsError> get copyWith;
}

/// @nodoc
class _$GetMyPlaylistsTearOff {
  const _$GetMyPlaylistsTearOff();

// ignore: unused_element
  GetMyPlaylists$ call() {
    return const GetMyPlaylists$();
  }

// ignore: unused_element
  GetMyPlaylistsSuccessful successful(List<Playlist> playlists) {
    return GetMyPlaylistsSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  GetMyPlaylistsError error(Object error) {
    return GetMyPlaylistsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetMyPlaylists = _$GetMyPlaylistsTearOff();

/// @nodoc
mixin _$GetMyPlaylists {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetMyPlaylists$ value), {
    @required Result successful(GetMyPlaylistsSuccessful value),
    @required Result error(GetMyPlaylistsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMyPlaylists$ value), {
    Result successful(GetMyPlaylistsSuccessful value),
    Result error(GetMyPlaylistsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetMyPlaylistsCopyWith<$Res> {
  factory $GetMyPlaylistsCopyWith(
          GetMyPlaylists value, $Res Function(GetMyPlaylists) then) =
      _$GetMyPlaylistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMyPlaylistsCopyWithImpl<$Res>
    implements $GetMyPlaylistsCopyWith<$Res> {
  _$GetMyPlaylistsCopyWithImpl(this._value, this._then);

  final GetMyPlaylists _value;
  // ignore: unused_field
  final $Res Function(GetMyPlaylists) _then;
}

/// @nodoc
abstract class $GetMyPlaylists$CopyWith<$Res> {
  factory $GetMyPlaylists$CopyWith(
          GetMyPlaylists$ value, $Res Function(GetMyPlaylists$) then) =
      _$GetMyPlaylists$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMyPlaylists$CopyWithImpl<$Res>
    extends _$GetMyPlaylistsCopyWithImpl<$Res>
    implements $GetMyPlaylists$CopyWith<$Res> {
  _$GetMyPlaylists$CopyWithImpl(
      GetMyPlaylists$ _value, $Res Function(GetMyPlaylists$) _then)
      : super(_value, (v) => _then(v as GetMyPlaylists$));

  @override
  GetMyPlaylists$ get _value => super._value as GetMyPlaylists$;
}

/// @nodoc
class _$GetMyPlaylists$ implements GetMyPlaylists$ {
  const _$GetMyPlaylists$();

  @override
  String toString() {
    return 'GetMyPlaylists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMyPlaylists$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Playlist> playlists),
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
    Result successful(List<Playlist> playlists),
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
    Result $default(GetMyPlaylists$ value), {
    @required Result successful(GetMyPlaylistsSuccessful value),
    @required Result error(GetMyPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMyPlaylists$ value), {
    Result successful(GetMyPlaylistsSuccessful value),
    Result error(GetMyPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMyPlaylists$ implements GetMyPlaylists {
  const factory GetMyPlaylists$() = _$GetMyPlaylists$;
}

/// @nodoc
abstract class $GetMyPlaylistsSuccessfulCopyWith<$Res> {
  factory $GetMyPlaylistsSuccessfulCopyWith(GetMyPlaylistsSuccessful value,
          $Res Function(GetMyPlaylistsSuccessful) then) =
      _$GetMyPlaylistsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$GetMyPlaylistsSuccessfulCopyWithImpl<$Res>
    extends _$GetMyPlaylistsCopyWithImpl<$Res>
    implements $GetMyPlaylistsSuccessfulCopyWith<$Res> {
  _$GetMyPlaylistsSuccessfulCopyWithImpl(GetMyPlaylistsSuccessful _value,
      $Res Function(GetMyPlaylistsSuccessful) _then)
      : super(_value, (v) => _then(v as GetMyPlaylistsSuccessful));

  @override
  GetMyPlaylistsSuccessful get _value =>
      super._value as GetMyPlaylistsSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(GetMyPlaylistsSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$GetMyPlaylistsSuccessful implements GetMyPlaylistsSuccessful {
  const _$GetMyPlaylistsSuccessful(this.playlists) : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'GetMyPlaylists.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMyPlaylistsSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $GetMyPlaylistsSuccessfulCopyWith<GetMyPlaylistsSuccessful> get copyWith =>
      _$GetMyPlaylistsSuccessfulCopyWithImpl<GetMyPlaylistsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(GetMyPlaylists$ value), {
    @required Result successful(GetMyPlaylistsSuccessful value),
    @required Result error(GetMyPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMyPlaylists$ value), {
    Result successful(GetMyPlaylistsSuccessful value),
    Result error(GetMyPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMyPlaylistsSuccessful implements GetMyPlaylists {
  const factory GetMyPlaylistsSuccessful(List<Playlist> playlists) =
      _$GetMyPlaylistsSuccessful;

  List<Playlist> get playlists;
  $GetMyPlaylistsSuccessfulCopyWith<GetMyPlaylistsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetMyPlaylistsErrorCopyWith<$Res> {
  factory $GetMyPlaylistsErrorCopyWith(
          GetMyPlaylistsError value, $Res Function(GetMyPlaylistsError) then) =
      _$GetMyPlaylistsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetMyPlaylistsErrorCopyWithImpl<$Res>
    extends _$GetMyPlaylistsCopyWithImpl<$Res>
    implements $GetMyPlaylistsErrorCopyWith<$Res> {
  _$GetMyPlaylistsErrorCopyWithImpl(
      GetMyPlaylistsError _value, $Res Function(GetMyPlaylistsError) _then)
      : super(_value, (v) => _then(v as GetMyPlaylistsError));

  @override
  GetMyPlaylistsError get _value => super._value as GetMyPlaylistsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetMyPlaylistsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetMyPlaylistsError implements GetMyPlaylistsError {
  const _$GetMyPlaylistsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetMyPlaylists.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMyPlaylistsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetMyPlaylistsErrorCopyWith<GetMyPlaylistsError> get copyWith =>
      _$GetMyPlaylistsErrorCopyWithImpl<GetMyPlaylistsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(GetMyPlaylists$ value), {
    @required Result successful(GetMyPlaylistsSuccessful value),
    @required Result error(GetMyPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetMyPlaylists$ value), {
    Result successful(GetMyPlaylistsSuccessful value),
    Result error(GetMyPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMyPlaylistsError implements GetMyPlaylists, ErrorAction {
  const factory GetMyPlaylistsError(Object error) = _$GetMyPlaylistsError;

  Object get error;
  $GetMyPlaylistsErrorCopyWith<GetMyPlaylistsError> get copyWith;
}

/// @nodoc
class _$UpdatePlaylistInfoTearOff {
  const _$UpdatePlaylistInfoTearOff();

// ignore: unused_element
  UpdatePlaylistInfo$ call(
      {String addVideoRef,
      String removeVideoRef,
      String description,
      String title,
      String category}) {
    return UpdatePlaylistInfo$(
      addVideoRef: addVideoRef,
      removeVideoRef: removeVideoRef,
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
      this.description,
      this.title,
      this.category});

  @override
  final String addVideoRef;
  @override
  final String removeVideoRef;
  @override
  final String description;
  @override
  final String title;
  @override
  final String category;

  @override
  String toString() {
    return 'UpdatePlaylistInfo(addVideoRef: $addVideoRef, removeVideoRef: $removeVideoRef, description: $description, title: $title, category: $category)';
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
      String description,
      String title,
      String category}) = _$UpdatePlaylistInfo$;

  @override
  String get addVideoRef;
  @override
  String get removeVideoRef;
  @override
  String get description;
  @override
  String get title;
  @override
  String get category;
  @override
  $UpdatePlaylistInfo$CopyWith<UpdatePlaylistInfo$> get copyWith;
}
