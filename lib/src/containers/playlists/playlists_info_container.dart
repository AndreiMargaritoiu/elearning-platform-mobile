part of playlists_conatiners;

class PlaylistInfoContainer extends StatelessWidget {
  const PlaylistInfoContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<PlaylistInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PlaylistInfo>(
      converter: (Store<AppState> store) => store.state.playlists.info,
      builder: builder,
    );
  }
}
