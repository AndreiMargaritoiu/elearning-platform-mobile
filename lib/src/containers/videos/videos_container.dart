part of videos_conatiners;

class VideosContainer extends StatelessWidget {
  const VideosContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Video>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Video>>(
      converter: (Store<AppState> store) => store.state.videos.videos //
          .where((Video video) => store.state.auth.users[video.uid] != null)
          .toList(),
      builder: builder,
    );
  }
}
