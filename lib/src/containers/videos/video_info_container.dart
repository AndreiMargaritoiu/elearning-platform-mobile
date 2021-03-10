part of videos_containers;

class VideoInfoContainer extends StatelessWidget {
  const VideoInfoContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<VideoInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VideoInfo>(
      converter: (Store<AppState> store) => store.state.videos.info,
      builder: builder,
    );
  }
}
