part of playlists_conatiners;

class PlaylistsContainer extends StatelessWidget {
  const PlaylistsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Playlist>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Playlist>>(
      converter: (Store<AppState> store) => store.state.playlists.playlists //
          .where((Playlist playlist) =>
              store.state.auth.users[playlist.uid] != null)
          .toList(),
      builder: builder,
    );
  }
}
