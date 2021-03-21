part of tracking_conatiners;

class TrackedItemsContainer extends StatelessWidget {
  const TrackedItemsContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<Tracking>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Tracking>>(
      converter: (Store<AppState> store) => store
          .state.trackedItems.trackedItems //
          .where((Tracking trackingItem) =>
              store.state.auth.users[trackingItem.uid] != null)
          .toList(),
      builder: builder,
    );
  }
}
