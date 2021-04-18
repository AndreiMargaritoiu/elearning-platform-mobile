part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..auth = AuthState.initialState().toBuilder()
        ..posts = PostsState.initialState().toBuilder()
        ..videos = VideosState.initialState().toBuilder()
        ..mentorships = MentorshipsState.initialState().toBuilder()
        ..trackedItems = TrackingsState.initialState().toBuilder()
        ..workshops = WorkshopsState.initialState().toBuilder()
        ..playlists = PlaylistsState.initialState().toBuilder();
    });
  }

  factory AppState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json);

  AppState._();

  AuthState get auth;

  PostsState get posts;

  VideosState get videos;

  PlaylistsState get playlists;

  MentorshipsState get mentorships;

  WorkshopsState get workshops;

  TrackingsState get trackedItems;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
