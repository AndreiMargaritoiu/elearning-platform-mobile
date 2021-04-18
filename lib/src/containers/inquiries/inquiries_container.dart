part of inqruiries_conatiners;

class InquiriesContainer extends StatelessWidget {
  const InquiriesContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<Inquiry>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Inquiry>>(
      converter: (Store<AppState> store) => store
          .state.inquiries.inquiries //
          .where((Inquiry inquiry) =>
      store.state.auth.users[inquiry.mentorId] != null)
          .toList(),
      builder: builder,
    );
  }
}
