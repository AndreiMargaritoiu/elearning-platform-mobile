part of playlists_models;

abstract class PlaylistsState
    implements Built<PlaylistsState, PlaylistsStateBuilder> {
  factory PlaylistsState([void Function(PlaylistsStateBuilder b) updates]) =
      _$PlaylistsState;

  factory PlaylistsState.initialState() {
    return _$PlaylistsState();
  }

  factory PlaylistsState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  PlaylistsState._();

  PlaylistInfo get info;

  BuiltList<Playlist> get playlists;

  BuiltList<Playlist> get searchResult;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PlaylistsState> get serializer =>
      _$playlistsStateSerializer;
}
