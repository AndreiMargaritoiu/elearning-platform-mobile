// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of videos_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddVideoTearOff {
  const _$AddVideoTearOff();

// ignore: unused_element
  AddVideo$ call() {
    return const AddVideo$();
  }

// ignore: unused_element
  AddVideoSuccessful successful(Video video) {
    return AddVideoSuccessful(
      video,
    );
  }

// ignore: unused_element
  AddVideoError error(Object error) {
    return AddVideoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddVideo = _$AddVideoTearOff();

/// @nodoc
mixin _$AddVideo {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Video video),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Video video),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddVideo$ value), {
    @required Result successful(AddVideoSuccessful value),
    @required Result error(AddVideoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddVideo$ value), {
    Result successful(AddVideoSuccessful value),
    Result error(AddVideoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AddVideoCopyWith<$Res> {
  factory $AddVideoCopyWith(AddVideo value, $Res Function(AddVideo) then) =
      _$AddVideoCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddVideoCopyWithImpl<$Res> implements $AddVideoCopyWith<$Res> {
  _$AddVideoCopyWithImpl(this._value, this._then);

  final AddVideo _value;
  // ignore: unused_field
  final $Res Function(AddVideo) _then;
}

/// @nodoc
abstract class $AddVideo$CopyWith<$Res> {
  factory $AddVideo$CopyWith(AddVideo$ value, $Res Function(AddVideo$) then) =
      _$AddVideo$CopyWithImpl<$Res>;
}

/// @nodoc
class _$AddVideo$CopyWithImpl<$Res> extends _$AddVideoCopyWithImpl<$Res>
    implements $AddVideo$CopyWith<$Res> {
  _$AddVideo$CopyWithImpl(AddVideo$ _value, $Res Function(AddVideo$) _then)
      : super(_value, (v) => _then(v as AddVideo$));

  @override
  AddVideo$ get _value => super._value as AddVideo$;
}

/// @nodoc
class _$AddVideo$ implements AddVideo$ {
  const _$AddVideo$();

  @override
  String toString() {
    return 'AddVideo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddVideo$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Video video),
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
    Result successful(Video video),
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
    Result $default(AddVideo$ value), {
    @required Result successful(AddVideoSuccessful value),
    @required Result error(AddVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddVideo$ value), {
    Result successful(AddVideoSuccessful value),
    Result error(AddVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddVideo$ implements AddVideo {
  const factory AddVideo$() = _$AddVideo$;
}

/// @nodoc
abstract class $AddVideoSuccessfulCopyWith<$Res> {
  factory $AddVideoSuccessfulCopyWith(
          AddVideoSuccessful value, $Res Function(AddVideoSuccessful) then) =
      _$AddVideoSuccessfulCopyWithImpl<$Res>;
  $Res call({Video video});
}

/// @nodoc
class _$AddVideoSuccessfulCopyWithImpl<$Res>
    extends _$AddVideoCopyWithImpl<$Res>
    implements $AddVideoSuccessfulCopyWith<$Res> {
  _$AddVideoSuccessfulCopyWithImpl(
      AddVideoSuccessful _value, $Res Function(AddVideoSuccessful) _then)
      : super(_value, (v) => _then(v as AddVideoSuccessful));

  @override
  AddVideoSuccessful get _value => super._value as AddVideoSuccessful;

  @override
  $Res call({
    Object video = freezed,
  }) {
    return _then(AddVideoSuccessful(
      video == freezed ? _value.video : video as Video,
    ));
  }
}

/// @nodoc
class _$AddVideoSuccessful implements AddVideoSuccessful {
  const _$AddVideoSuccessful(this.video) : assert(video != null);

  @override
  final Video video;

  @override
  String toString() {
    return 'AddVideo.successful(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddVideoSuccessful &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(video);

  @override
  $AddVideoSuccessfulCopyWith<AddVideoSuccessful> get copyWith =>
      _$AddVideoSuccessfulCopyWithImpl<AddVideoSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Video video),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(video);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Video video),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddVideo$ value), {
    @required Result successful(AddVideoSuccessful value),
    @required Result error(AddVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddVideo$ value), {
    Result successful(AddVideoSuccessful value),
    Result error(AddVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddVideoSuccessful implements AddVideo {
  const factory AddVideoSuccessful(Video video) = _$AddVideoSuccessful;

  Video get video;
  $AddVideoSuccessfulCopyWith<AddVideoSuccessful> get copyWith;
}

/// @nodoc
abstract class $AddVideoErrorCopyWith<$Res> {
  factory $AddVideoErrorCopyWith(
          AddVideoError value, $Res Function(AddVideoError) then) =
      _$AddVideoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$AddVideoErrorCopyWithImpl<$Res> extends _$AddVideoCopyWithImpl<$Res>
    implements $AddVideoErrorCopyWith<$Res> {
  _$AddVideoErrorCopyWithImpl(
      AddVideoError _value, $Res Function(AddVideoError) _then)
      : super(_value, (v) => _then(v as AddVideoError));

  @override
  AddVideoError get _value => super._value as AddVideoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(AddVideoError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$AddVideoError implements AddVideoError {
  const _$AddVideoError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'AddVideo.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddVideoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $AddVideoErrorCopyWith<AddVideoError> get copyWith =>
      _$AddVideoErrorCopyWithImpl<AddVideoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Video video),
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
    Result successful(Video video),
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
    Result $default(AddVideo$ value), {
    @required Result successful(AddVideoSuccessful value),
    @required Result error(AddVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddVideo$ value), {
    Result successful(AddVideoSuccessful value),
    Result error(AddVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddVideoError implements AddVideo, ErrorAction {
  const factory AddVideoError(Object error) = _$AddVideoError;

  Object get error;
  $AddVideoErrorCopyWith<AddVideoError> get copyWith;
}

/// @nodoc
class _$GetVideoByIdTearOff {
  const _$GetVideoByIdTearOff();

// ignore: unused_element
  GetVideoById$ call(String id) {
    return GetVideoById$(
      id,
    );
  }

// ignore: unused_element
  GetVideoByIdSuccessful successful(Video videos) {
    return GetVideoByIdSuccessful(
      videos,
    );
  }

// ignore: unused_element
  GetVideoByIdError error(Object error) {
    return GetVideoByIdError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetVideoById = _$GetVideoByIdTearOff();

/// @nodoc
mixin _$GetVideoById {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video videos),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Video videos),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetVideoById$ value), {
    @required Result successful(GetVideoByIdSuccessful value),
    @required Result error(GetVideoByIdError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideoById$ value), {
    Result successful(GetVideoByIdSuccessful value),
    Result error(GetVideoByIdError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetVideoByIdCopyWith<$Res> {
  factory $GetVideoByIdCopyWith(
          GetVideoById value, $Res Function(GetVideoById) then) =
      _$GetVideoByIdCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetVideoByIdCopyWithImpl<$Res> implements $GetVideoByIdCopyWith<$Res> {
  _$GetVideoByIdCopyWithImpl(this._value, this._then);

  final GetVideoById _value;
  // ignore: unused_field
  final $Res Function(GetVideoById) _then;
}

/// @nodoc
abstract class $GetVideoById$CopyWith<$Res> {
  factory $GetVideoById$CopyWith(
          GetVideoById$ value, $Res Function(GetVideoById$) then) =
      _$GetVideoById$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetVideoById$CopyWithImpl<$Res> extends _$GetVideoByIdCopyWithImpl<$Res>
    implements $GetVideoById$CopyWith<$Res> {
  _$GetVideoById$CopyWithImpl(
      GetVideoById$ _value, $Res Function(GetVideoById$) _then)
      : super(_value, (v) => _then(v as GetVideoById$));

  @override
  GetVideoById$ get _value => super._value as GetVideoById$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetVideoById$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetVideoById$ implements GetVideoById$ {
  const _$GetVideoById$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'GetVideoById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVideoById$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetVideoById$CopyWith<GetVideoById$> get copyWith =>
      _$GetVideoById$CopyWithImpl<GetVideoById$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video videos),
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
    Result successful(Video videos),
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
    Result $default(GetVideoById$ value), {
    @required Result successful(GetVideoByIdSuccessful value),
    @required Result error(GetVideoByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideoById$ value), {
    Result successful(GetVideoByIdSuccessful value),
    Result error(GetVideoByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetVideoById$ implements GetVideoById {
  const factory GetVideoById$(String id) = _$GetVideoById$;

  String get id;
  $GetVideoById$CopyWith<GetVideoById$> get copyWith;
}

/// @nodoc
abstract class $GetVideoByIdSuccessfulCopyWith<$Res> {
  factory $GetVideoByIdSuccessfulCopyWith(GetVideoByIdSuccessful value,
          $Res Function(GetVideoByIdSuccessful) then) =
      _$GetVideoByIdSuccessfulCopyWithImpl<$Res>;
  $Res call({Video videos});
}

/// @nodoc
class _$GetVideoByIdSuccessfulCopyWithImpl<$Res>
    extends _$GetVideoByIdCopyWithImpl<$Res>
    implements $GetVideoByIdSuccessfulCopyWith<$Res> {
  _$GetVideoByIdSuccessfulCopyWithImpl(GetVideoByIdSuccessful _value,
      $Res Function(GetVideoByIdSuccessful) _then)
      : super(_value, (v) => _then(v as GetVideoByIdSuccessful));

  @override
  GetVideoByIdSuccessful get _value => super._value as GetVideoByIdSuccessful;

  @override
  $Res call({
    Object videos = freezed,
  }) {
    return _then(GetVideoByIdSuccessful(
      videos == freezed ? _value.videos : videos as Video,
    ));
  }
}

/// @nodoc
class _$GetVideoByIdSuccessful implements GetVideoByIdSuccessful {
  const _$GetVideoByIdSuccessful(this.videos) : assert(videos != null);

  @override
  final Video videos;

  @override
  String toString() {
    return 'GetVideoById.successful(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVideoByIdSuccessful &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videos);

  @override
  $GetVideoByIdSuccessfulCopyWith<GetVideoByIdSuccessful> get copyWith =>
      _$GetVideoByIdSuccessfulCopyWithImpl<GetVideoByIdSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video videos),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(videos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Video videos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetVideoById$ value), {
    @required Result successful(GetVideoByIdSuccessful value),
    @required Result error(GetVideoByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideoById$ value), {
    Result successful(GetVideoByIdSuccessful value),
    Result error(GetVideoByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetVideoByIdSuccessful implements GetVideoById {
  const factory GetVideoByIdSuccessful(Video videos) = _$GetVideoByIdSuccessful;

  Video get videos;
  $GetVideoByIdSuccessfulCopyWith<GetVideoByIdSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetVideoByIdErrorCopyWith<$Res> {
  factory $GetVideoByIdErrorCopyWith(
          GetVideoByIdError value, $Res Function(GetVideoByIdError) then) =
      _$GetVideoByIdErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetVideoByIdErrorCopyWithImpl<$Res>
    extends _$GetVideoByIdCopyWithImpl<$Res>
    implements $GetVideoByIdErrorCopyWith<$Res> {
  _$GetVideoByIdErrorCopyWithImpl(
      GetVideoByIdError _value, $Res Function(GetVideoByIdError) _then)
      : super(_value, (v) => _then(v as GetVideoByIdError));

  @override
  GetVideoByIdError get _value => super._value as GetVideoByIdError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetVideoByIdError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetVideoByIdError implements GetVideoByIdError {
  const _$GetVideoByIdError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetVideoById.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVideoByIdError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetVideoByIdErrorCopyWith<GetVideoByIdError> get copyWith =>
      _$GetVideoByIdErrorCopyWithImpl<GetVideoByIdError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video videos),
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
    Result successful(Video videos),
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
    Result $default(GetVideoById$ value), {
    @required Result successful(GetVideoByIdSuccessful value),
    @required Result error(GetVideoByIdError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideoById$ value), {
    Result successful(GetVideoByIdSuccessful value),
    Result error(GetVideoByIdError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetVideoByIdError implements GetVideoById, ErrorAction {
  const factory GetVideoByIdError(Object error) = _$GetVideoByIdError;

  Object get error;
  $GetVideoByIdErrorCopyWith<GetVideoByIdError> get copyWith;
}

/// @nodoc
class _$UpdateVideoTearOff {
  const _$UpdateVideoTearOff();

// ignore: unused_element
  UpdateVideo$ call(String id) {
    return UpdateVideo$(
      id,
    );
  }

// ignore: unused_element
  UpdateVideoSuccessful successful(Video video) {
    return UpdateVideoSuccessful(
      video,
    );
  }

// ignore: unused_element
  UpdateVideoError error(Object error) {
    return UpdateVideoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateVideo = _$UpdateVideoTearOff();

/// @nodoc
mixin _$UpdateVideo {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video video),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Video video),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateVideo$ value), {
    @required Result successful(UpdateVideoSuccessful value),
    @required Result error(UpdateVideoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateVideo$ value), {
    Result successful(UpdateVideoSuccessful value),
    Result error(UpdateVideoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateVideoCopyWith<$Res> {
  factory $UpdateVideoCopyWith(
          UpdateVideo value, $Res Function(UpdateVideo) then) =
      _$UpdateVideoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateVideoCopyWithImpl<$Res> implements $UpdateVideoCopyWith<$Res> {
  _$UpdateVideoCopyWithImpl(this._value, this._then);

  final UpdateVideo _value;
  // ignore: unused_field
  final $Res Function(UpdateVideo) _then;
}

/// @nodoc
abstract class $UpdateVideo$CopyWith<$Res> {
  factory $UpdateVideo$CopyWith(
          UpdateVideo$ value, $Res Function(UpdateVideo$) then) =
      _$UpdateVideo$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UpdateVideo$CopyWithImpl<$Res> extends _$UpdateVideoCopyWithImpl<$Res>
    implements $UpdateVideo$CopyWith<$Res> {
  _$UpdateVideo$CopyWithImpl(
      UpdateVideo$ _value, $Res Function(UpdateVideo$) _then)
      : super(_value, (v) => _then(v as UpdateVideo$));

  @override
  UpdateVideo$ get _value => super._value as UpdateVideo$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(UpdateVideo$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$UpdateVideo$ implements UpdateVideo$ {
  const _$UpdateVideo$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'UpdateVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVideo$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $UpdateVideo$CopyWith<UpdateVideo$> get copyWith =>
      _$UpdateVideo$CopyWithImpl<UpdateVideo$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video video),
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
    Result successful(Video video),
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
    Result $default(UpdateVideo$ value), {
    @required Result successful(UpdateVideoSuccessful value),
    @required Result error(UpdateVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateVideo$ value), {
    Result successful(UpdateVideoSuccessful value),
    Result error(UpdateVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateVideo$ implements UpdateVideo {
  const factory UpdateVideo$(String id) = _$UpdateVideo$;

  String get id;
  $UpdateVideo$CopyWith<UpdateVideo$> get copyWith;
}

/// @nodoc
abstract class $UpdateVideoSuccessfulCopyWith<$Res> {
  factory $UpdateVideoSuccessfulCopyWith(UpdateVideoSuccessful value,
          $Res Function(UpdateVideoSuccessful) then) =
      _$UpdateVideoSuccessfulCopyWithImpl<$Res>;
  $Res call({Video video});
}

/// @nodoc
class _$UpdateVideoSuccessfulCopyWithImpl<$Res>
    extends _$UpdateVideoCopyWithImpl<$Res>
    implements $UpdateVideoSuccessfulCopyWith<$Res> {
  _$UpdateVideoSuccessfulCopyWithImpl(
      UpdateVideoSuccessful _value, $Res Function(UpdateVideoSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateVideoSuccessful));

  @override
  UpdateVideoSuccessful get _value => super._value as UpdateVideoSuccessful;

  @override
  $Res call({
    Object video = freezed,
  }) {
    return _then(UpdateVideoSuccessful(
      video == freezed ? _value.video : video as Video,
    ));
  }
}

/// @nodoc
class _$UpdateVideoSuccessful implements UpdateVideoSuccessful {
  const _$UpdateVideoSuccessful(this.video) : assert(video != null);

  @override
  final Video video;

  @override
  String toString() {
    return 'UpdateVideo.successful(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVideoSuccessful &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(video);

  @override
  $UpdateVideoSuccessfulCopyWith<UpdateVideoSuccessful> get copyWith =>
      _$UpdateVideoSuccessfulCopyWithImpl<UpdateVideoSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video video),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(video);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id), {
    Result successful(Video video),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateVideo$ value), {
    @required Result successful(UpdateVideoSuccessful value),
    @required Result error(UpdateVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateVideo$ value), {
    Result successful(UpdateVideoSuccessful value),
    Result error(UpdateVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateVideoSuccessful implements UpdateVideo {
  const factory UpdateVideoSuccessful(Video video) = _$UpdateVideoSuccessful;

  Video get video;
  $UpdateVideoSuccessfulCopyWith<UpdateVideoSuccessful> get copyWith;
}

/// @nodoc
abstract class $UpdateVideoErrorCopyWith<$Res> {
  factory $UpdateVideoErrorCopyWith(
          UpdateVideoError value, $Res Function(UpdateVideoError) then) =
      _$UpdateVideoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateVideoErrorCopyWithImpl<$Res>
    extends _$UpdateVideoCopyWithImpl<$Res>
    implements $UpdateVideoErrorCopyWith<$Res> {
  _$UpdateVideoErrorCopyWithImpl(
      UpdateVideoError _value, $Res Function(UpdateVideoError) _then)
      : super(_value, (v) => _then(v as UpdateVideoError));

  @override
  UpdateVideoError get _value => super._value as UpdateVideoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateVideoError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateVideoError implements UpdateVideoError {
  const _$UpdateVideoError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateVideo.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVideoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateVideoErrorCopyWith<UpdateVideoError> get copyWith =>
      _$UpdateVideoErrorCopyWithImpl<UpdateVideoError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id), {
    @required Result successful(Video video),
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
    Result successful(Video video),
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
    Result $default(UpdateVideo$ value), {
    @required Result successful(UpdateVideoSuccessful value),
    @required Result error(UpdateVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateVideo$ value), {
    Result successful(UpdateVideoSuccessful value),
    Result error(UpdateVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateVideoError implements UpdateVideo, ErrorAction {
  const factory UpdateVideoError(Object error) = _$UpdateVideoError;

  Object get error;
  $UpdateVideoErrorCopyWith<UpdateVideoError> get copyWith;
}

/// @nodoc
class _$DeleteVideoTearOff {
  const _$DeleteVideoTearOff();

// ignore: unused_element
  DeleteVideo$ call(String id) {
    return DeleteVideo$(
      id,
    );
  }

// ignore: unused_element
  DeleteVideoSuccessful successful() {
    return const DeleteVideoSuccessful();
  }

// ignore: unused_element
  DeleteVideoError error(Object error) {
    return DeleteVideoError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeleteVideo = _$DeleteVideoTearOff();

/// @nodoc
mixin _$DeleteVideo {
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
    Result $default(DeleteVideo$ value), {
    @required Result successful(DeleteVideoSuccessful value),
    @required Result error(DeleteVideoError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteVideo$ value), {
    Result successful(DeleteVideoSuccessful value),
    Result error(DeleteVideoError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DeleteVideoCopyWith<$Res> {
  factory $DeleteVideoCopyWith(
          DeleteVideo value, $Res Function(DeleteVideo) then) =
      _$DeleteVideoCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteVideoCopyWithImpl<$Res> implements $DeleteVideoCopyWith<$Res> {
  _$DeleteVideoCopyWithImpl(this._value, this._then);

  final DeleteVideo _value;
  // ignore: unused_field
  final $Res Function(DeleteVideo) _then;
}

/// @nodoc
abstract class $DeleteVideo$CopyWith<$Res> {
  factory $DeleteVideo$CopyWith(
          DeleteVideo$ value, $Res Function(DeleteVideo$) then) =
      _$DeleteVideo$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeleteVideo$CopyWithImpl<$Res> extends _$DeleteVideoCopyWithImpl<$Res>
    implements $DeleteVideo$CopyWith<$Res> {
  _$DeleteVideo$CopyWithImpl(
      DeleteVideo$ _value, $Res Function(DeleteVideo$) _then)
      : super(_value, (v) => _then(v as DeleteVideo$));

  @override
  DeleteVideo$ get _value => super._value as DeleteVideo$;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(DeleteVideo$(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$DeleteVideo$ implements DeleteVideo$ {
  const _$DeleteVideo$(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'DeleteVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteVideo$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $DeleteVideo$CopyWith<DeleteVideo$> get copyWith =>
      _$DeleteVideo$CopyWithImpl<DeleteVideo$>(this, _$identity);

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
    Result $default(DeleteVideo$ value), {
    @required Result successful(DeleteVideoSuccessful value),
    @required Result error(DeleteVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteVideo$ value), {
    Result successful(DeleteVideoSuccessful value),
    Result error(DeleteVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DeleteVideo$ implements DeleteVideo {
  const factory DeleteVideo$(String id) = _$DeleteVideo$;

  String get id;
  $DeleteVideo$CopyWith<DeleteVideo$> get copyWith;
}

/// @nodoc
abstract class $DeleteVideoSuccessfulCopyWith<$Res> {
  factory $DeleteVideoSuccessfulCopyWith(DeleteVideoSuccessful value,
          $Res Function(DeleteVideoSuccessful) then) =
      _$DeleteVideoSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteVideoSuccessfulCopyWithImpl<$Res>
    extends _$DeleteVideoCopyWithImpl<$Res>
    implements $DeleteVideoSuccessfulCopyWith<$Res> {
  _$DeleteVideoSuccessfulCopyWithImpl(
      DeleteVideoSuccessful _value, $Res Function(DeleteVideoSuccessful) _then)
      : super(_value, (v) => _then(v as DeleteVideoSuccessful));

  @override
  DeleteVideoSuccessful get _value => super._value as DeleteVideoSuccessful;
}

/// @nodoc
class _$DeleteVideoSuccessful implements DeleteVideoSuccessful {
  const _$DeleteVideoSuccessful();

  @override
  String toString() {
    return 'DeleteVideo.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteVideoSuccessful);
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
    Result $default(DeleteVideo$ value), {
    @required Result successful(DeleteVideoSuccessful value),
    @required Result error(DeleteVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteVideo$ value), {
    Result successful(DeleteVideoSuccessful value),
    Result error(DeleteVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class DeleteVideoSuccessful implements DeleteVideo {
  const factory DeleteVideoSuccessful() = _$DeleteVideoSuccessful;
}

/// @nodoc
abstract class $DeleteVideoErrorCopyWith<$Res> {
  factory $DeleteVideoErrorCopyWith(
          DeleteVideoError value, $Res Function(DeleteVideoError) then) =
      _$DeleteVideoErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$DeleteVideoErrorCopyWithImpl<$Res>
    extends _$DeleteVideoCopyWithImpl<$Res>
    implements $DeleteVideoErrorCopyWith<$Res> {
  _$DeleteVideoErrorCopyWithImpl(
      DeleteVideoError _value, $Res Function(DeleteVideoError) _then)
      : super(_value, (v) => _then(v as DeleteVideoError));

  @override
  DeleteVideoError get _value => super._value as DeleteVideoError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(DeleteVideoError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$DeleteVideoError implements DeleteVideoError {
  const _$DeleteVideoError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'DeleteVideo.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteVideoError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $DeleteVideoErrorCopyWith<DeleteVideoError> get copyWith =>
      _$DeleteVideoErrorCopyWithImpl<DeleteVideoError>(this, _$identity);

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
    Result $default(DeleteVideo$ value), {
    @required Result successful(DeleteVideoSuccessful value),
    @required Result error(DeleteVideoError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(DeleteVideo$ value), {
    Result successful(DeleteVideoSuccessful value),
    Result error(DeleteVideoError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteVideoError implements DeleteVideo, ErrorAction {
  const factory DeleteVideoError(Object error) = _$DeleteVideoError;

  Object get error;
  $DeleteVideoErrorCopyWith<DeleteVideoError> get copyWith;
}

/// @nodoc
class _$UpdateVideoInfoTearOff {
  const _$UpdateVideoInfoTearOff();

// ignore: unused_element
  UpdateVideoInfo$ call(
      {String addVideo,
      String removeVideo,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title}) {
    return UpdateVideoInfo$(
      addVideo: addVideo,
      removeVideo: removeVideo,
      addThumbnail: addThumbnail,
      removeThumbnail: removeThumbnail,
      description: description,
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateVideoInfo = _$UpdateVideoInfoTearOff();

/// @nodoc
mixin _$UpdateVideoInfo {
  String get addVideo;
  String get removeVideo;
  String get addThumbnail;
  String get removeThumbnail;
  String get description;
  String get title;

  $UpdateVideoInfoCopyWith<UpdateVideoInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateVideoInfoCopyWith<$Res> {
  factory $UpdateVideoInfoCopyWith(
          UpdateVideoInfo value, $Res Function(UpdateVideoInfo) then) =
      _$UpdateVideoInfoCopyWithImpl<$Res>;
  $Res call(
      {String addVideo,
      String removeVideo,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title});
}

/// @nodoc
class _$UpdateVideoInfoCopyWithImpl<$Res>
    implements $UpdateVideoInfoCopyWith<$Res> {
  _$UpdateVideoInfoCopyWithImpl(this._value, this._then);

  final UpdateVideoInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateVideoInfo) _then;

  @override
  $Res call({
    Object addVideo = freezed,
    Object removeVideo = freezed,
    Object addThumbnail = freezed,
    Object removeThumbnail = freezed,
    Object description = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      addVideo: addVideo == freezed ? _value.addVideo : addVideo as String,
      removeVideo:
          removeVideo == freezed ? _value.removeVideo : removeVideo as String,
      addThumbnail: addThumbnail == freezed
          ? _value.addThumbnail
          : addThumbnail as String,
      removeThumbnail: removeThumbnail == freezed
          ? _value.removeThumbnail
          : removeThumbnail as String,
      description:
          description == freezed ? _value.description : description as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateVideoInfo$CopyWith<$Res>
    implements $UpdateVideoInfoCopyWith<$Res> {
  factory $UpdateVideoInfo$CopyWith(
          UpdateVideoInfo$ value, $Res Function(UpdateVideoInfo$) then) =
      _$UpdateVideoInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String addVideo,
      String removeVideo,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title});
}

/// @nodoc
class _$UpdateVideoInfo$CopyWithImpl<$Res>
    extends _$UpdateVideoInfoCopyWithImpl<$Res>
    implements $UpdateVideoInfo$CopyWith<$Res> {
  _$UpdateVideoInfo$CopyWithImpl(
      UpdateVideoInfo$ _value, $Res Function(UpdateVideoInfo$) _then)
      : super(_value, (v) => _then(v as UpdateVideoInfo$));

  @override
  UpdateVideoInfo$ get _value => super._value as UpdateVideoInfo$;

  @override
  $Res call({
    Object addVideo = freezed,
    Object removeVideo = freezed,
    Object addThumbnail = freezed,
    Object removeThumbnail = freezed,
    Object description = freezed,
    Object title = freezed,
  }) {
    return _then(UpdateVideoInfo$(
      addVideo: addVideo == freezed ? _value.addVideo : addVideo as String,
      removeVideo:
          removeVideo == freezed ? _value.removeVideo : removeVideo as String,
      addThumbnail: addThumbnail == freezed
          ? _value.addThumbnail
          : addThumbnail as String,
      removeThumbnail: removeThumbnail == freezed
          ? _value.removeThumbnail
          : removeThumbnail as String,
      description:
          description == freezed ? _value.description : description as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$UpdateVideoInfo$ implements UpdateVideoInfo$ {
  const _$UpdateVideoInfo$(
      {this.addVideo,
      this.removeVideo,
      this.addThumbnail,
      this.removeThumbnail,
      this.description,
      this.title});

  @override
  final String addVideo;
  @override
  final String removeVideo;
  @override
  final String addThumbnail;
  @override
  final String removeThumbnail;
  @override
  final String description;
  @override
  final String title;

  @override
  String toString() {
    return 'UpdateVideoInfo(addVideo: $addVideo, removeVideo: $removeVideo, addThumbnail: $addThumbnail, removeThumbnail: $removeThumbnail, description: $description, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVideoInfo$ &&
            (identical(other.addVideo, addVideo) ||
                const DeepCollectionEquality()
                    .equals(other.addVideo, addVideo)) &&
            (identical(other.removeVideo, removeVideo) ||
                const DeepCollectionEquality()
                    .equals(other.removeVideo, removeVideo)) &&
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
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addVideo) ^
      const DeepCollectionEquality().hash(removeVideo) ^
      const DeepCollectionEquality().hash(addThumbnail) ^
      const DeepCollectionEquality().hash(removeThumbnail) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(title);

  @override
  $UpdateVideoInfo$CopyWith<UpdateVideoInfo$> get copyWith =>
      _$UpdateVideoInfo$CopyWithImpl<UpdateVideoInfo$>(this, _$identity);
}

abstract class UpdateVideoInfo$ implements UpdateVideoInfo {
  const factory UpdateVideoInfo$(
      {String addVideo,
      String removeVideo,
      String addThumbnail,
      String removeThumbnail,
      String description,
      String title}) = _$UpdateVideoInfo$;

  @override
  String get addVideo;
  @override
  String get removeVideo;
  @override
  String get addThumbnail;
  @override
  String get removeThumbnail;
  @override
  String get description;
  @override
  String get title;
  @override
  $UpdateVideoInfo$CopyWith<UpdateVideoInfo$> get copyWith;
}

/// @nodoc
class _$SearchVideosTearOff {
  const _$SearchVideosTearOff();

// ignore: unused_element
  SearchVideos$ call(String query) {
    return SearchVideos$(
      query,
    );
  }

// ignore: unused_element
  SearchVideosSuccessful successful(List<Video> videos) {
    return SearchVideosSuccessful(
      videos,
    );
  }

// ignore: unused_element
  SearchVideosError error(Object error) {
    return SearchVideosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchVideos = _$SearchVideosTearOff();

/// @nodoc
mixin _$SearchVideos {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Video> videos),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Video> videos),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchVideos$ value), {
    @required Result successful(SearchVideosSuccessful value),
    @required Result error(SearchVideosError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchVideos$ value), {
    Result successful(SearchVideosSuccessful value),
    Result error(SearchVideosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchVideosCopyWith<$Res> {
  factory $SearchVideosCopyWith(
          SearchVideos value, $Res Function(SearchVideos) then) =
      _$SearchVideosCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchVideosCopyWithImpl<$Res> implements $SearchVideosCopyWith<$Res> {
  _$SearchVideosCopyWithImpl(this._value, this._then);

  final SearchVideos _value;
  // ignore: unused_field
  final $Res Function(SearchVideos) _then;
}

/// @nodoc
abstract class $SearchVideos$CopyWith<$Res> {
  factory $SearchVideos$CopyWith(
          SearchVideos$ value, $Res Function(SearchVideos$) then) =
      _$SearchVideos$CopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchVideos$CopyWithImpl<$Res> extends _$SearchVideosCopyWithImpl<$Res>
    implements $SearchVideos$CopyWith<$Res> {
  _$SearchVideos$CopyWithImpl(
      SearchVideos$ _value, $Res Function(SearchVideos$) _then)
      : super(_value, (v) => _then(v as SearchVideos$));

  @override
  SearchVideos$ get _value => super._value as SearchVideos$;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchVideos$(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchVideos$ implements SearchVideos$ {
  const _$SearchVideos$(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchVideos(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchVideos$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchVideos$CopyWith<SearchVideos$> get copyWith =>
      _$SearchVideos$CopyWithImpl<SearchVideos$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Video> videos),
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
    Result successful(List<Video> videos),
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
    Result $default(SearchVideos$ value), {
    @required Result successful(SearchVideosSuccessful value),
    @required Result error(SearchVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchVideos$ value), {
    Result successful(SearchVideosSuccessful value),
    Result error(SearchVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchVideos$ implements SearchVideos {
  const factory SearchVideos$(String query) = _$SearchVideos$;

  String get query;
  $SearchVideos$CopyWith<SearchVideos$> get copyWith;
}

/// @nodoc
abstract class $SearchVideosSuccessfulCopyWith<$Res> {
  factory $SearchVideosSuccessfulCopyWith(SearchVideosSuccessful value,
          $Res Function(SearchVideosSuccessful) then) =
      _$SearchVideosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Video> videos});
}

/// @nodoc
class _$SearchVideosSuccessfulCopyWithImpl<$Res>
    extends _$SearchVideosCopyWithImpl<$Res>
    implements $SearchVideosSuccessfulCopyWith<$Res> {
  _$SearchVideosSuccessfulCopyWithImpl(SearchVideosSuccessful _value,
      $Res Function(SearchVideosSuccessful) _then)
      : super(_value, (v) => _then(v as SearchVideosSuccessful));

  @override
  SearchVideosSuccessful get _value => super._value as SearchVideosSuccessful;

  @override
  $Res call({
    Object videos = freezed,
  }) {
    return _then(SearchVideosSuccessful(
      videos == freezed ? _value.videos : videos as List<Video>,
    ));
  }
}

/// @nodoc
class _$SearchVideosSuccessful implements SearchVideosSuccessful {
  const _$SearchVideosSuccessful(this.videos) : assert(videos != null);

  @override
  final List<Video> videos;

  @override
  String toString() {
    return 'SearchVideos.successful(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchVideosSuccessful &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videos);

  @override
  $SearchVideosSuccessfulCopyWith<SearchVideosSuccessful> get copyWith =>
      _$SearchVideosSuccessfulCopyWithImpl<SearchVideosSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Video> videos),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(videos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<Video> videos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchVideos$ value), {
    @required Result successful(SearchVideosSuccessful value),
    @required Result error(SearchVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchVideos$ value), {
    Result successful(SearchVideosSuccessful value),
    Result error(SearchVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchVideosSuccessful implements SearchVideos {
  const factory SearchVideosSuccessful(List<Video> videos) =
      _$SearchVideosSuccessful;

  List<Video> get videos;
  $SearchVideosSuccessfulCopyWith<SearchVideosSuccessful> get copyWith;
}

/// @nodoc
abstract class $SearchVideosErrorCopyWith<$Res> {
  factory $SearchVideosErrorCopyWith(
          SearchVideosError value, $Res Function(SearchVideosError) then) =
      _$SearchVideosErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SearchVideosErrorCopyWithImpl<$Res>
    extends _$SearchVideosCopyWithImpl<$Res>
    implements $SearchVideosErrorCopyWith<$Res> {
  _$SearchVideosErrorCopyWithImpl(
      SearchVideosError _value, $Res Function(SearchVideosError) _then)
      : super(_value, (v) => _then(v as SearchVideosError));

  @override
  SearchVideosError get _value => super._value as SearchVideosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SearchVideosError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchVideosError implements SearchVideosError {
  const _$SearchVideosError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SearchVideos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchVideosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SearchVideosErrorCopyWith<SearchVideosError> get copyWith =>
      _$SearchVideosErrorCopyWithImpl<SearchVideosError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<Video> videos),
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
    Result successful(List<Video> videos),
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
    Result $default(SearchVideos$ value), {
    @required Result successful(SearchVideosSuccessful value),
    @required Result error(SearchVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchVideos$ value), {
    Result successful(SearchVideosSuccessful value),
    Result error(SearchVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchVideosError implements SearchVideos, ErrorAction {
  const factory SearchVideosError(Object error) = _$SearchVideosError;

  Object get error;
  $SearchVideosErrorCopyWith<SearchVideosError> get copyWith;
}

/// @nodoc
class _$GetVideosTearOff {
  const _$GetVideosTearOff();

// ignore: unused_element
  GetVideos$ call(
      {String userId, String playlistId, bool trending, bool followers}) {
    return GetVideos$(
      userId: userId,
      playlistId: playlistId,
      trending: trending,
      followers: followers,
    );
  }

// ignore: unused_element
  GetVideosSuccessful successful(List<Video> videos) {
    return GetVideosSuccessful(
      videos,
    );
  }

// ignore: unused_element
  GetVideosError error(Object error) {
    return GetVideosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetVideos = _$GetVideosTearOff();

/// @nodoc
mixin _$GetVideos {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    @required Result successful(List<Video> videos),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    Result successful(List<Video> videos),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetVideos$ value), {
    @required Result successful(GetVideosSuccessful value),
    @required Result error(GetVideosError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideos$ value), {
    Result successful(GetVideosSuccessful value),
    Result error(GetVideosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetVideosCopyWith<$Res> {
  factory $GetVideosCopyWith(GetVideos value, $Res Function(GetVideos) then) =
      _$GetVideosCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetVideosCopyWithImpl<$Res> implements $GetVideosCopyWith<$Res> {
  _$GetVideosCopyWithImpl(this._value, this._then);

  final GetVideos _value;
  // ignore: unused_field
  final $Res Function(GetVideos) _then;
}

/// @nodoc
abstract class $GetVideos$CopyWith<$Res> {
  factory $GetVideos$CopyWith(
          GetVideos$ value, $Res Function(GetVideos$) then) =
      _$GetVideos$CopyWithImpl<$Res>;
  $Res call({String userId, String playlistId, bool trending, bool followers});
}

/// @nodoc
class _$GetVideos$CopyWithImpl<$Res> extends _$GetVideosCopyWithImpl<$Res>
    implements $GetVideos$CopyWith<$Res> {
  _$GetVideos$CopyWithImpl(GetVideos$ _value, $Res Function(GetVideos$) _then)
      : super(_value, (v) => _then(v as GetVideos$));

  @override
  GetVideos$ get _value => super._value as GetVideos$;

  @override
  $Res call({
    Object userId = freezed,
    Object playlistId = freezed,
    Object trending = freezed,
    Object followers = freezed,
  }) {
    return _then(GetVideos$(
      userId: userId == freezed ? _value.userId : userId as String,
      playlistId:
          playlistId == freezed ? _value.playlistId : playlistId as String,
      trending: trending == freezed ? _value.trending : trending as bool,
      followers: followers == freezed ? _value.followers : followers as bool,
    ));
  }
}

/// @nodoc
class _$GetVideos$ implements GetVideos$ {
  const _$GetVideos$(
      {this.userId, this.playlistId, this.trending, this.followers});

  @override
  final String userId;
  @override
  final String playlistId;
  @override
  final bool trending;
  @override
  final bool followers;

  @override
  String toString() {
    return 'GetVideos(userId: $userId, playlistId: $playlistId, trending: $trending, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVideos$ &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.playlistId, playlistId) ||
                const DeepCollectionEquality()
                    .equals(other.playlistId, playlistId)) &&
            (identical(other.trending, trending) ||
                const DeepCollectionEquality()
                    .equals(other.trending, trending)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(playlistId) ^
      const DeepCollectionEquality().hash(trending) ^
      const DeepCollectionEquality().hash(followers);

  @override
  $GetVideos$CopyWith<GetVideos$> get copyWith =>
      _$GetVideos$CopyWithImpl<GetVideos$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    @required Result successful(List<Video> videos),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(userId, playlistId, trending, followers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    Result successful(List<Video> videos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(userId, playlistId, trending, followers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetVideos$ value), {
    @required Result successful(GetVideosSuccessful value),
    @required Result error(GetVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideos$ value), {
    Result successful(GetVideosSuccessful value),
    Result error(GetVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetVideos$ implements GetVideos {
  const factory GetVideos$(
      {String userId,
      String playlistId,
      bool trending,
      bool followers}) = _$GetVideos$;

  String get userId;
  String get playlistId;
  bool get trending;
  bool get followers;
  $GetVideos$CopyWith<GetVideos$> get copyWith;
}

/// @nodoc
abstract class $GetVideosSuccessfulCopyWith<$Res> {
  factory $GetVideosSuccessfulCopyWith(
          GetVideosSuccessful value, $Res Function(GetVideosSuccessful) then) =
      _$GetVideosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Video> videos});
}

/// @nodoc
class _$GetVideosSuccessfulCopyWithImpl<$Res>
    extends _$GetVideosCopyWithImpl<$Res>
    implements $GetVideosSuccessfulCopyWith<$Res> {
  _$GetVideosSuccessfulCopyWithImpl(
      GetVideosSuccessful _value, $Res Function(GetVideosSuccessful) _then)
      : super(_value, (v) => _then(v as GetVideosSuccessful));

  @override
  GetVideosSuccessful get _value => super._value as GetVideosSuccessful;

  @override
  $Res call({
    Object videos = freezed,
  }) {
    return _then(GetVideosSuccessful(
      videos == freezed ? _value.videos : videos as List<Video>,
    ));
  }
}

/// @nodoc
class _$GetVideosSuccessful implements GetVideosSuccessful {
  const _$GetVideosSuccessful(this.videos) : assert(videos != null);

  @override
  final List<Video> videos;

  @override
  String toString() {
    return 'GetVideos.successful(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVideosSuccessful &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videos);

  @override
  $GetVideosSuccessfulCopyWith<GetVideosSuccessful> get copyWith =>
      _$GetVideosSuccessfulCopyWithImpl<GetVideosSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    @required Result successful(List<Video> videos),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(videos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    Result successful(List<Video> videos),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetVideos$ value), {
    @required Result successful(GetVideosSuccessful value),
    @required Result error(GetVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideos$ value), {
    Result successful(GetVideosSuccessful value),
    Result error(GetVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetVideosSuccessful implements GetVideos {
  const factory GetVideosSuccessful(List<Video> videos) = _$GetVideosSuccessful;

  List<Video> get videos;
  $GetVideosSuccessfulCopyWith<GetVideosSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetVideosErrorCopyWith<$Res> {
  factory $GetVideosErrorCopyWith(
          GetVideosError value, $Res Function(GetVideosError) then) =
      _$GetVideosErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetVideosErrorCopyWithImpl<$Res> extends _$GetVideosCopyWithImpl<$Res>
    implements $GetVideosErrorCopyWith<$Res> {
  _$GetVideosErrorCopyWithImpl(
      GetVideosError _value, $Res Function(GetVideosError) _then)
      : super(_value, (v) => _then(v as GetVideosError));

  @override
  GetVideosError get _value => super._value as GetVideosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetVideosError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetVideosError implements GetVideosError {
  const _$GetVideosError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetVideos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVideosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetVideosErrorCopyWith<GetVideosError> get copyWith =>
      _$GetVideosErrorCopyWithImpl<GetVideosError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    @required Result successful(List<Video> videos),
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
    Result $default(
        String userId, String playlistId, bool trending, bool followers), {
    Result successful(List<Video> videos),
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
    Result $default(GetVideos$ value), {
    @required Result successful(GetVideosSuccessful value),
    @required Result error(GetVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetVideos$ value), {
    Result successful(GetVideosSuccessful value),
    Result error(GetVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetVideosError implements GetVideos, ErrorAction {
  const factory GetVideosError(Object error) = _$GetVideosError;

  Object get error;
  $GetVideosErrorCopyWith<GetVideosError> get copyWith;
}
