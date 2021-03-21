part of tracking_conatiners;

class TrackingInfoContainer extends StatelessWidget {
  const TrackingInfoContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<TrackingInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TrackingInfo>(
      converter: (Store<AppState> store) => store.state.trackedItems.info,
      builder: builder,
    );
  }
}
