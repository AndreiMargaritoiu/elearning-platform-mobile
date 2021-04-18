part of workshops_conatiners;

class WorkshopsContainer extends StatelessWidget {
  const WorkshopsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Workshop>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Workshop>>(
      converter: (Store<AppState> store) => store.state.workshops.workshops //
          .toList(),
      builder: builder,
    );
  }
}
