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
class _$ListenForVideosTearOff {
  const _$ListenForVideosTearOff();

// ignore: unused_element
  ListenForVideos$ call() {
    return const ListenForVideos$();
  }

// ignore: unused_element
  ListenForVideosSuccessful successful(List<Video> videos) {
    return ListenForVideosSuccessful(
      videos,
    );
  }

// ignore: unused_element
  ListenForVideosError error(Object error) {
    return ListenForVideosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListenForVideos = _$ListenForVideosTearOff();

/// @nodoc
mixin _$ListenForVideos {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Video> videos),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Video> videos),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForVideos$ value), {
    @required Result successful(ListenForVideosSuccessful value),
    @required Result error(ListenForVideosError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForVideos$ value), {
    Result successful(ListenForVideosSuccessful value),
    Result error(ListenForVideosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ListenForVideosCopyWith<$Res> {
  factory $ListenForVideosCopyWith(
          ListenForVideos value, $Res Function(ListenForVideos) then) =
      _$ListenForVideosCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForVideosCopyWithImpl<$Res>
    implements $ListenForVideosCopyWith<$Res> {
  _$ListenForVideosCopyWithImpl(this._value, this._then);

  final ListenForVideos _value;
  // ignore: unused_field
  final $Res Function(ListenForVideos) _then;
}

/// @nodoc
abstract class $ListenForVideos$CopyWith<$Res> {
  factory $ListenForVideos$CopyWith(
          ListenForVideos$ value, $Res Function(ListenForVideos$) then) =
      _$ListenForVideos$CopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForVideos$CopyWithImpl<$Res>
    extends _$ListenForVideosCopyWithImpl<$Res>
    implements $ListenForVideos$CopyWith<$Res> {
  _$ListenForVideos$CopyWithImpl(
      ListenForVideos$ _value, $Res Function(ListenForVideos$) _then)
      : super(_value, (v) => _then(v as ListenForVideos$));

  @override
  ListenForVideos$ get _value => super._value as ListenForVideos$;
}

/// @nodoc
class _$ListenForVideos$ implements ListenForVideos$ {
  const _$ListenForVideos$();

  @override
  String toString() {
    return 'ListenForVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenForVideos$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Video> videos),
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
    Result successful(List<Video> videos),
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
    Result $default(ListenForVideos$ value), {
    @required Result successful(ListenForVideosSuccessful value),
    @required Result error(ListenForVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForVideos$ value), {
    Result successful(ListenForVideosSuccessful value),
    Result error(ListenForVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ListenForVideos$ implements ListenForVideos {
  const factory ListenForVideos$() = _$ListenForVideos$;
}

/// @nodoc
abstract class $ListenForVideosSuccessfulCopyWith<$Res> {
  factory $ListenForVideosSuccessfulCopyWith(ListenForVideosSuccessful value,
          $Res Function(ListenForVideosSuccessful) then) =
      _$ListenForVideosSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Video> videos});
}

/// @nodoc
class _$ListenForVideosSuccessfulCopyWithImpl<$Res>
    extends _$ListenForVideosCopyWithImpl<$Res>
    implements $ListenForVideosSuccessfulCopyWith<$Res> {
  _$ListenForVideosSuccessfulCopyWithImpl(ListenForVideosSuccessful _value,
      $Res Function(ListenForVideosSuccessful) _then)
      : super(_value, (v) => _then(v as ListenForVideosSuccessful));

  @override
  ListenForVideosSuccessful get _value =>
      super._value as ListenForVideosSuccessful;

  @override
  $Res call({
    Object videos = freezed,
  }) {
    return _then(ListenForVideosSuccessful(
      videos == freezed ? _value.videos : videos as List<Video>,
    ));
  }
}

/// @nodoc
class _$ListenForVideosSuccessful implements ListenForVideosSuccessful {
  const _$ListenForVideosSuccessful(this.videos) : assert(videos != null);

  @override
  final List<Video> videos;

  @override
  String toString() {
    return 'ListenForVideos.successful(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForVideosSuccessful &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videos);

  @override
  $ListenForVideosSuccessfulCopyWith<ListenForVideosSuccessful> get copyWith =>
      _$ListenForVideosSuccessfulCopyWithImpl<ListenForVideosSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(ListenForVideos$ value), {
    @required Result successful(ListenForVideosSuccessful value),
    @required Result error(ListenForVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForVideos$ value), {
    Result successful(ListenForVideosSuccessful value),
    Result error(ListenForVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ListenForVideosSuccessful implements ListenForVideos {
  const factory ListenForVideosSuccessful(List<Video> videos) =
      _$ListenForVideosSuccessful;

  List<Video> get videos;
  $ListenForVideosSuccessfulCopyWith<ListenForVideosSuccessful> get copyWith;
}

/// @nodoc
abstract class $ListenForVideosErrorCopyWith<$Res> {
  factory $ListenForVideosErrorCopyWith(ListenForVideosError value,
          $Res Function(ListenForVideosError) then) =
      _$ListenForVideosErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ListenForVideosErrorCopyWithImpl<$Res>
    extends _$ListenForVideosCopyWithImpl<$Res>
    implements $ListenForVideosErrorCopyWith<$Res> {
  _$ListenForVideosErrorCopyWithImpl(
      ListenForVideosError _value, $Res Function(ListenForVideosError) _then)
      : super(_value, (v) => _then(v as ListenForVideosError));

  @override
  ListenForVideosError get _value => super._value as ListenForVideosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ListenForVideosError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ListenForVideosError implements ListenForVideosError {
  const _$ListenForVideosError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ListenForVideos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForVideosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ListenForVideosErrorCopyWith<ListenForVideosError> get copyWith =>
      _$ListenForVideosErrorCopyWithImpl<ListenForVideosError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(ListenForVideos$ value), {
    @required Result successful(ListenForVideosSuccessful value),
    @required Result error(ListenForVideosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForVideos$ value), {
    Result successful(ListenForVideosSuccessful value),
    Result error(ListenForVideosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListenForVideosError implements ListenForVideos, ErrorAction {
  const factory ListenForVideosError(Object error) = _$ListenForVideosError;

  Object get error;
  $ListenForVideosErrorCopyWith<ListenForVideosError> get copyWith;
}

/// @nodoc
class _$UpdateVideoInfoTearOff {
  const _$UpdateVideoInfoTearOff();

// ignore: unused_element
  UpdateVideoInfo$ call(
      {String addVideo, String removeVideo, String description}) {
    return UpdateVideoInfo$(
      addVideo: addVideo,
      removeVideo: removeVideo,
      description: description,
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
  String get description;

  $UpdateVideoInfoCopyWith<UpdateVideoInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateVideoInfoCopyWith<$Res> {
  factory $UpdateVideoInfoCopyWith(
          UpdateVideoInfo value, $Res Function(UpdateVideoInfo) then) =
      _$UpdateVideoInfoCopyWithImpl<$Res>;
  $Res call({String addVideo, String removeVideo, String description});
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
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      addVideo: addVideo == freezed ? _value.addVideo : addVideo as String,
      removeVideo:
          removeVideo == freezed ? _value.removeVideo : removeVideo as String,
      description:
          description == freezed ? _value.description : description as String,
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
  $Res call({String addVideo, String removeVideo, String description});
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
    Object description = freezed,
  }) {
    return _then(UpdateVideoInfo$(
      addVideo: addVideo == freezed ? _value.addVideo : addVideo as String,
      removeVideo:
          removeVideo == freezed ? _value.removeVideo : removeVideo as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$UpdateVideoInfo$ implements UpdateVideoInfo$ {
  const _$UpdateVideoInfo$({this.addVideo, this.removeVideo, this.description});

  @override
  final String addVideo;
  @override
  final String removeVideo;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateVideoInfo(addVideo: $addVideo, removeVideo: $removeVideo, description: $description)';
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
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addVideo) ^
      const DeepCollectionEquality().hash(removeVideo) ^
      const DeepCollectionEquality().hash(description);

  @override
  $UpdateVideoInfo$CopyWith<UpdateVideoInfo$> get copyWith =>
      _$UpdateVideoInfo$CopyWithImpl<UpdateVideoInfo$>(this, _$identity);
}

abstract class UpdateVideoInfo$ implements UpdateVideoInfo {
  const factory UpdateVideoInfo$(
      {String addVideo,
      String removeVideo,
      String description}) = _$UpdateVideoInfo$;

  @override
  String get addVideo;
  @override
  String get removeVideo;
  @override
  String get description;
  @override
  $UpdateVideoInfo$CopyWith<UpdateVideoInfo$> get copyWith;
}
