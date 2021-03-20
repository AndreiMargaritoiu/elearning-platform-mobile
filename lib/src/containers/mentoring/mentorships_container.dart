part of mentoring_conatiners;

class MentorshipsContainer extends StatelessWidget {
  const MentorshipsContainer({Key key, @required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<Mentorship>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Mentorship>>(
      converter: (Store<AppState> store) => store
          .state.mentorships.mentorships //
          .where((Mentorship mentorship) =>
              store.state.auth.users[mentorship.mentorId] != null)
          .toList(),
      builder: builder,
    );
  }
}
