part of mentoring_conatiners;

class MentorshipInfoContainer extends StatelessWidget {
  const MentorshipInfoContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<MentorshipInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MentorshipInfo>(
      converter: (Store<AppState> store) => store.state.mentorships.info,
      builder: builder,
    );
  }
}
