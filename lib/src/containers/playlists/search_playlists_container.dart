part of playlists_conatiners;

class SearchPlaylistsContainer extends StatelessWidget {
  const SearchPlaylistsContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<Playlist>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Playlist>>(
      converter: (Store<AppState> store) =>
          store.state.playlists.searchResult.asList(),
      builder: builder,
    );
  }
}
