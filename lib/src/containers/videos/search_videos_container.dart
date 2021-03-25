part of videos_conatiners;

class SearchVideosContainer extends StatelessWidget {
  const SearchVideosContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<Video>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Video>>(
      converter: (Store<AppState> store) =>
          store.state.videos.searchResult.asList(),
      builder: builder,
    );
  }
}
