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
class _$GetPlaylistsByUidTearOff {
  const _$GetPlaylistsByUidTearOff();

// ignore: unused_element
  GetPlaylistsByUid$ call({String id}) {
    return GetPlaylistsByUid$(
      id: id,
    );
  }

// ignore: unused_element
  GetPlaylistsByUidSuccessful successful(List<Playlist> playlists) {
    return GetPlaylistsByUidSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  GetPlaylistsByUidError error(Object error) {
    return GetPlaylistsByUidError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPlaylistsByUid = _$GetPlaylistsByUidTearOff();

/// @nodoc
mixin _$GetPlaylistsByUid {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(List<Playlist> playlists),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(List<Playlist> playlists),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPlaylistsByUid$ value), {
    @required Result successful(GetPlaylistsByUidSuccessful value),
    @required Result error(GetPlaylistsByUidError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistsByUid$ value), {
    Result successful(GetPlaylistsByUidSuccessful value),
    Result error(GetPlaylistsByUidError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPlaylistsByUidCopyWith<$Res> {
  factory $GetPlaylistsByUidCopyWith(
          GetPlaylistsByUid value, $Res Function(GetPlaylistsByUid) then) =
      _$GetPlaylistsByUidCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPlaylistsByUidCopyWithImpl<$Res>
    implements $GetPlaylistsByUidCopyWith<$Res> {
  _$GetPlaylistsByUidCopyWithImpl(this._value, this._then);

  final GetPlaylistsByUid _value;
  // ignore: unused_field
  final $Res Function(GetPlaylistsByUid) _then;
}

/// @nodoc
abstract class $GetPlaylistsByUid$CopyWith<$Res> {
  factory $GetPlaylistsByUid$CopyWith(
          GetPlaylistsByUid$ value, $Res Function(GetPlaylistsByUid$) then) =
      _$GetPlaylistsByUid$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetPlaylistsByUid$CopyWithImpl<$Res>
    extends _$GetPlaylistsByUidCopyWithImpl<$Res>
    implements $GetPlaylistsByUid$CopyWith<$Res> {
  _$GetPlaylistsByUid$CopyWithImpl(
      GetPlaylistsByUid$ _value, $Res Function(GetPlaylistsByUid$) _then)
      : super(_value, (v) => _then(v as GetPlaylistsByUid$));

  @override
  GetPlaylistsByUid$ get _value => super._value as GetPlaylistsByUid$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetPlaylistsByUid$(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetPlaylistsByUid$ implements GetPlaylistsByUid$ {
  const _$GetPlaylistsByUid$({this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'GetPlaylistsByUid(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistsByUid$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetPlaylistsByUid$CopyWith<GetPlaylistsByUid$> get copyWith =>
      _$GetPlaylistsByUid$CopyWithImpl<GetPlaylistsByUid$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(List<Playlist> playlists),
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
    Result successful(List<Playlist> playlists),
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
    Result $default(GetPlaylistsByUid$ value), {
    @required Result successful(GetPlaylistsByUidSuccessful value),
    @required Result error(GetPlaylistsByUidError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistsByUid$ value), {
    Result successful(GetPlaylistsByUidSuccessful value),
    Result error(GetPlaylistsByUidError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistsByUid$ implements GetPlaylistsByUid {
  const factory GetPlaylistsByUid$({String id}) = _$GetPlaylistsByUid$;

  String get id;
  $GetPlaylistsByUid$CopyWith<GetPlaylistsByUid$> get copyWith;
}

/// @nodoc
abstract class $GetPlaylistsByUidSuccessfulCopyWith<$Res> {
  factory $GetPlaylistsByUidSuccessfulCopyWith(
          GetPlaylistsByUidSuccessful value,
          $Res Function(GetPlaylistsByUidSuccessful) then) =
      _$GetPlaylistsByUidSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$GetPlaylistsByUidSuccessfulCopyWithImpl<$Res>
    extends _$GetPlaylistsByUidCopyWithImpl<$Res>
    implements $GetPlaylistsByUidSuccessfulCopyWith<$Res> {
  _$GetPlaylistsByUidSuccessfulCopyWithImpl(GetPlaylistsByUidSuccessful _value,
      $Res Function(GetPlaylistsByUidSuccessful) _then)
      : super(_value, (v) => _then(v as GetPlaylistsByUidSuccessful));

  @override
  GetPlaylistsByUidSuccessful get _value =>
      super._value as GetPlaylistsByUidSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(GetPlaylistsByUidSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$GetPlaylistsByUidSuccessful implements GetPlaylistsByUidSuccessful {
  const _$GetPlaylistsByUidSuccessful(this.playlists)
      : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'GetPlaylistsByUid.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistsByUidSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $GetPlaylistsByUidSuccessfulCopyWith<GetPlaylistsByUidSuccessful>
      get copyWith => _$GetPlaylistsByUidSuccessfulCopyWithImpl<
          GetPlaylistsByUidSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
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
    Result $default(String id), {
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
    Result $default(GetPlaylistsByUid$ value), {
    @required Result successful(GetPlaylistsByUidSuccessful value),
    @required Result error(GetPlaylistsByUidError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistsByUid$ value), {
    Result successful(GetPlaylistsByUidSuccessful value),
    Result error(GetPlaylistsByUidError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistsByUidSuccessful implements GetPlaylistsByUid {
  const factory GetPlaylistsByUidSuccessful(List<Playlist> playlists) =
      _$GetPlaylistsByUidSuccessful;

  List<Playlist> get playlists;
  $GetPlaylistsByUidSuccessfulCopyWith<GetPlaylistsByUidSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetPlaylistsByUidErrorCopyWith<$Res> {
  factory $GetPlaylistsByUidErrorCopyWith(GetPlaylistsByUidError value,
          $Res Function(GetPlaylistsByUidError) then) =
      _$GetPlaylistsByUidErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetPlaylistsByUidErrorCopyWithImpl<$Res>
    extends _$GetPlaylistsByUidCopyWithImpl<$Res>
    implements $GetPlaylistsByUidErrorCopyWith<$Res> {
  _$GetPlaylistsByUidErrorCopyWithImpl(GetPlaylistsByUidError _value,
      $Res Function(GetPlaylistsByUidError) _then)
      : super(_value, (v) => _then(v as GetPlaylistsByUidError));

  @override
  GetPlaylistsByUidError get _value => super._value as GetPlaylistsByUidError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPlaylistsByUidError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetPlaylistsByUidError implements GetPlaylistsByUidError {
  const _$GetPlaylistsByUidError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetPlaylistsByUid.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPlaylistsByUidError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPlaylistsByUidErrorCopyWith<GetPlaylistsByUidError> get copyWith =>
      _$GetPlaylistsByUidErrorCopyWithImpl<GetPlaylistsByUidError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
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
    Result $default(String id), {
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
    Result $default(GetPlaylistsByUid$ value), {
    @required Result successful(GetPlaylistsByUidSuccessful value),
    @required Result error(GetPlaylistsByUidError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPlaylistsByUid$ value), {
    Result successful(GetPlaylistsByUidSuccessful value),
    Result error(GetPlaylistsByUidError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistsByUidError
    implements GetPlaylistsByUid, ErrorAction {
  const factory GetPlaylistsByUidError(Object error) = _$GetPlaylistsByUidError;

  Object get error;
  $GetPlaylistsByUidErrorCopyWith<GetPlaylistsByUidError> get copyWith;
}

/// @nodoc
class _$GetSchoolPlaylistsTearOff {
  const _$GetSchoolPlaylistsTearOff();

// ignore: unused_element
  GetSchoolPlaylists$ call() {
    return const GetSchoolPlaylists$();
  }

// ignore: unused_element
  GetSchoolPlaylistsSuccessful successful(List<Playlist> playlists) {
    return GetSchoolPlaylistsSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  GetSchoolPlaylistsError error(Object error) {
    return GetSchoolPlaylistsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetSchoolPlaylists = _$GetSchoolPlaylistsTearOff();

/// @nodoc
mixin _$GetSchoolPlaylists {
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
    Result $default(GetSchoolPlaylists$ value), {
    @required Result successful(GetSchoolPlaylistsSuccessful value),
    @required Result error(GetSchoolPlaylistsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSchoolPlaylists$ value), {
    Result successful(GetSchoolPlaylistsSuccessful value),
    Result error(GetSchoolPlaylistsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetSchoolPlaylistsCopyWith<$Res> {
  factory $GetSchoolPlaylistsCopyWith(
          GetSchoolPlaylists value, $Res Function(GetSchoolPlaylists) then) =
      _$GetSchoolPlaylistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSchoolPlaylistsCopyWithImpl<$Res>
    implements $GetSchoolPlaylistsCopyWith<$Res> {
  _$GetSchoolPlaylistsCopyWithImpl(this._value, this._then);

  final GetSchoolPlaylists _value;
  // ignore: unused_field
  final $Res Function(GetSchoolPlaylists) _then;
}

/// @nodoc
abstract class $GetSchoolPlaylists$CopyWith<$Res> {
  factory $GetSchoolPlaylists$CopyWith(
          GetSchoolPlaylists$ value, $Res Function(GetSchoolPlaylists$) then) =
      _$GetSchoolPlaylists$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSchoolPlaylists$CopyWithImpl<$Res>
    extends _$GetSchoolPlaylistsCopyWithImpl<$Res>
    implements $GetSchoolPlaylists$CopyWith<$Res> {
  _$GetSchoolPlaylists$CopyWithImpl(
      GetSchoolPlaylists$ _value, $Res Function(GetSchoolPlaylists$) _then)
      : super(_value, (v) => _then(v as GetSchoolPlaylists$));

  @override
  GetSchoolPlaylists$ get _value => super._value as GetSchoolPlaylists$;
}

/// @nodoc
class _$GetSchoolPlaylists$ implements GetSchoolPlaylists$ {
  const _$GetSchoolPlaylists$();

  @override
  String toString() {
    return 'GetSchoolPlaylists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSchoolPlaylists$);
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
    Result $default(GetSchoolPlaylists$ value), {
    @required Result successful(GetSchoolPlaylistsSuccessful value),
    @required Result error(GetSchoolPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSchoolPlaylists$ value), {
    Result successful(GetSchoolPlaylistsSuccessful value),
    Result error(GetSchoolPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetSchoolPlaylists$ implements GetSchoolPlaylists {
  const factory GetSchoolPlaylists$() = _$GetSchoolPlaylists$;
}

/// @nodoc
abstract class $GetSchoolPlaylistsSuccessfulCopyWith<$Res> {
  factory $GetSchoolPlaylistsSuccessfulCopyWith(
          GetSchoolPlaylistsSuccessful value,
          $Res Function(GetSchoolPlaylistsSuccessful) then) =
      _$GetSchoolPlaylistsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$GetSchoolPlaylistsSuccessfulCopyWithImpl<$Res>
    extends _$GetSchoolPlaylistsCopyWithImpl<$Res>
    implements $GetSchoolPlaylistsSuccessfulCopyWith<$Res> {
  _$GetSchoolPlaylistsSuccessfulCopyWithImpl(
      GetSchoolPlaylistsSuccessful _value,
      $Res Function(GetSchoolPlaylistsSuccessful) _then)
      : super(_value, (v) => _then(v as GetSchoolPlaylistsSuccessful));

  @override
  GetSchoolPlaylistsSuccessful get _value =>
      super._value as GetSchoolPlaylistsSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(GetSchoolPlaylistsSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$GetSchoolPlaylistsSuccessful implements GetSchoolPlaylistsSuccessful {
  const _$GetSchoolPlaylistsSuccessful(this.playlists)
      : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'GetSchoolPlaylists.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSchoolPlaylistsSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $GetSchoolPlaylistsSuccessfulCopyWith<GetSchoolPlaylistsSuccessful>
      get copyWith => _$GetSchoolPlaylistsSuccessfulCopyWithImpl<
          GetSchoolPlaylistsSuccessful>(this, _$identity);

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
    Result $default(GetSchoolPlaylists$ value), {
    @required Result successful(GetSchoolPlaylistsSuccessful value),
    @required Result error(GetSchoolPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSchoolPlaylists$ value), {
    Result successful(GetSchoolPlaylistsSuccessful value),
    Result error(GetSchoolPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetSchoolPlaylistsSuccessful implements GetSchoolPlaylists {
  const factory GetSchoolPlaylistsSuccessful(List<Playlist> playlists) =
      _$GetSchoolPlaylistsSuccessful;

  List<Playlist> get playlists;
  $GetSchoolPlaylistsSuccessfulCopyWith<GetSchoolPlaylistsSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetSchoolPlaylistsErrorCopyWith<$Res> {
  factory $GetSchoolPlaylistsErrorCopyWith(GetSchoolPlaylistsError value,
          $Res Function(GetSchoolPlaylistsError) then) =
      _$GetSchoolPlaylistsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetSchoolPlaylistsErrorCopyWithImpl<$Res>
    extends _$GetSchoolPlaylistsCopyWithImpl<$Res>
    implements $GetSchoolPlaylistsErrorCopyWith<$Res> {
  _$GetSchoolPlaylistsErrorCopyWithImpl(GetSchoolPlaylistsError _value,
      $Res Function(GetSchoolPlaylistsError) _then)
      : super(_value, (v) => _then(v as GetSchoolPlaylistsError));

  @override
  GetSchoolPlaylistsError get _value => super._value as GetSchoolPlaylistsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetSchoolPlaylistsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetSchoolPlaylistsError implements GetSchoolPlaylistsError {
  const _$GetSchoolPlaylistsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetSchoolPlaylists.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSchoolPlaylistsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetSchoolPlaylistsErrorCopyWith<GetSchoolPlaylistsError> get copyWith =>
      _$GetSchoolPlaylistsErrorCopyWithImpl<GetSchoolPlaylistsError>(
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
    Result $default(GetSchoolPlaylists$ value), {
    @required Result successful(GetSchoolPlaylistsSuccessful value),
    @required Result error(GetSchoolPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSchoolPlaylists$ value), {
    Result successful(GetSchoolPlaylistsSuccessful value),
    Result error(GetSchoolPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetSchoolPlaylistsError
    implements GetSchoolPlaylists, ErrorAction {
  const factory GetSchoolPlaylistsError(Object error) =
      _$GetSchoolPlaylistsError;

  Object get error;
  $GetSchoolPlaylistsErrorCopyWith<GetSchoolPlaylistsError> get copyWith;
}

/// @nodoc
class _$GetOtherPlaylistsTearOff {
  const _$GetOtherPlaylistsTearOff();

// ignore: unused_element
  GetOtherPlaylists$ call() {
    return const GetOtherPlaylists$();
  }

// ignore: unused_element
  GetOtherPlaylistsSuccessful successful(List<Playlist> playlists) {
    return GetOtherPlaylistsSuccessful(
      playlists,
    );
  }

// ignore: unused_element
  GetOtherPlaylistsError error(Object error) {
    return GetOtherPlaylistsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetOtherPlaylists = _$GetOtherPlaylistsTearOff();

/// @nodoc
mixin _$GetOtherPlaylists {
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
    Result $default(GetOtherPlaylists$ value), {
    @required Result successful(GetOtherPlaylistsSuccessful value),
    @required Result error(GetOtherPlaylistsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOtherPlaylists$ value), {
    Result successful(GetOtherPlaylistsSuccessful value),
    Result error(GetOtherPlaylistsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetOtherPlaylistsCopyWith<$Res> {
  factory $GetOtherPlaylistsCopyWith(
          GetOtherPlaylists value, $Res Function(GetOtherPlaylists) then) =
      _$GetOtherPlaylistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOtherPlaylistsCopyWithImpl<$Res>
    implements $GetOtherPlaylistsCopyWith<$Res> {
  _$GetOtherPlaylistsCopyWithImpl(this._value, this._then);

  final GetOtherPlaylists _value;
  // ignore: unused_field
  final $Res Function(GetOtherPlaylists) _then;
}

/// @nodoc
abstract class $GetOtherPlaylists$CopyWith<$Res> {
  factory $GetOtherPlaylists$CopyWith(
          GetOtherPlaylists$ value, $Res Function(GetOtherPlaylists$) then) =
      _$GetOtherPlaylists$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOtherPlaylists$CopyWithImpl<$Res>
    extends _$GetOtherPlaylistsCopyWithImpl<$Res>
    implements $GetOtherPlaylists$CopyWith<$Res> {
  _$GetOtherPlaylists$CopyWithImpl(
      GetOtherPlaylists$ _value, $Res Function(GetOtherPlaylists$) _then)
      : super(_value, (v) => _then(v as GetOtherPlaylists$));

  @override
  GetOtherPlaylists$ get _value => super._value as GetOtherPlaylists$;
}

/// @nodoc
class _$GetOtherPlaylists$ implements GetOtherPlaylists$ {
  const _$GetOtherPlaylists$();

  @override
  String toString() {
    return 'GetOtherPlaylists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetOtherPlaylists$);
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
    Result $default(GetOtherPlaylists$ value), {
    @required Result successful(GetOtherPlaylistsSuccessful value),
    @required Result error(GetOtherPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOtherPlaylists$ value), {
    Result successful(GetOtherPlaylistsSuccessful value),
    Result error(GetOtherPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetOtherPlaylists$ implements GetOtherPlaylists {
  const factory GetOtherPlaylists$() = _$GetOtherPlaylists$;
}

/// @nodoc
abstract class $GetOtherPlaylistsSuccessfulCopyWith<$Res> {
  factory $GetOtherPlaylistsSuccessfulCopyWith(
          GetOtherPlaylistsSuccessful value,
          $Res Function(GetOtherPlaylistsSuccessful) then) =
      _$GetOtherPlaylistsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class _$GetOtherPlaylistsSuccessfulCopyWithImpl<$Res>
    extends _$GetOtherPlaylistsCopyWithImpl<$Res>
    implements $GetOtherPlaylistsSuccessfulCopyWith<$Res> {
  _$GetOtherPlaylistsSuccessfulCopyWithImpl(GetOtherPlaylistsSuccessful _value,
      $Res Function(GetOtherPlaylistsSuccessful) _then)
      : super(_value, (v) => _then(v as GetOtherPlaylistsSuccessful));

  @override
  GetOtherPlaylistsSuccessful get _value =>
      super._value as GetOtherPlaylistsSuccessful;

  @override
  $Res call({
    Object playlists = freezed,
  }) {
    return _then(GetOtherPlaylistsSuccessful(
      playlists == freezed ? _value.playlists : playlists as List<Playlist>,
    ));
  }
}

/// @nodoc
class _$GetOtherPlaylistsSuccessful implements GetOtherPlaylistsSuccessful {
  const _$GetOtherPlaylistsSuccessful(this.playlists)
      : assert(playlists != null);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'GetOtherPlaylists.successful(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOtherPlaylistsSuccessful &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @override
  $GetOtherPlaylistsSuccessfulCopyWith<GetOtherPlaylistsSuccessful>
      get copyWith => _$GetOtherPlaylistsSuccessfulCopyWithImpl<
          GetOtherPlaylistsSuccessful>(this, _$identity);

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
    Result $default(GetOtherPlaylists$ value), {
    @required Result successful(GetOtherPlaylistsSuccessful value),
    @required Result error(GetOtherPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOtherPlaylists$ value), {
    Result successful(GetOtherPlaylistsSuccessful value),
    Result error(GetOtherPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetOtherPlaylistsSuccessful implements GetOtherPlaylists {
  const factory GetOtherPlaylistsSuccessful(List<Playlist> playlists) =
      _$GetOtherPlaylistsSuccessful;

  List<Playlist> get playlists;
  $GetOtherPlaylistsSuccessfulCopyWith<GetOtherPlaylistsSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetOtherPlaylistsErrorCopyWith<$Res> {
  factory $GetOtherPlaylistsErrorCopyWith(GetOtherPlaylistsError value,
          $Res Function(GetOtherPlaylistsError) then) =
      _$GetOtherPlaylistsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetOtherPlaylistsErrorCopyWithImpl<$Res>
    extends _$GetOtherPlaylistsCopyWithImpl<$Res>
    implements $GetOtherPlaylistsErrorCopyWith<$Res> {
  _$GetOtherPlaylistsErrorCopyWithImpl(GetOtherPlaylistsError _value,
      $Res Function(GetOtherPlaylistsError) _then)
      : super(_value, (v) => _then(v as GetOtherPlaylistsError));

  @override
  GetOtherPlaylistsError get _value => super._value as GetOtherPlaylistsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetOtherPlaylistsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetOtherPlaylistsError implements GetOtherPlaylistsError {
  const _$GetOtherPlaylistsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetOtherPlaylists.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOtherPlaylistsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetOtherPlaylistsErrorCopyWith<GetOtherPlaylistsError> get copyWith =>
      _$GetOtherPlaylistsErrorCopyWithImpl<GetOtherPlaylistsError>(
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
    Result $default(GetOtherPlaylists$ value), {
    @required Result successful(GetOtherPlaylistsSuccessful value),
    @required Result error(GetOtherPlaylistsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetOtherPlaylists$ value), {
    Result successful(GetOtherPlaylistsSuccessful value),
    Result error(GetOtherPlaylistsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetOtherPlaylistsError
    implements GetOtherPlaylists, ErrorAction {
  const factory GetOtherPlaylistsError(Object error) = _$GetOtherPlaylistsError;

  Object get error;
  $GetOtherPlaylistsErrorCopyWith<GetOtherPlaylistsError> get copyWith;
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
