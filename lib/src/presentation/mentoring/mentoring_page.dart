import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class MentoringPage extends StatefulWidget {
  const MentoringPage({Key key}) : super(key: key);

  @override
  _MentoringPageState createState() => _MentoringPageState();
}

class _MentoringPageState extends State<MentoringPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetAllMentorships(),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find your mentor'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: UsersContainer(
              builder: (BuildContext context, Map<String, AppUser> users) {
                return MentorshipsContainer(
                  builder:
                      (BuildContext context, List<Mentorship> mentorships) {
                    return ListView.builder(
                      itemCount: mentorships.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Mentorship mentorship = mentorships[index];
                        final AppUser user = users[mentorship.mentorId];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MaterialButton(
                              child: ListTile(
                                leading: user.photoUrl != null
                                    ? CircleAvatar(
                                  backgroundImage: NetworkImage(user.photoUrl),
                                )
                                    : CircleAvatar(
                                  backgroundColor: Colors.grey.shade900,
                                  child: Text(
                                    user.username[0].toUpperCase(),
                                  ),
                                ),
                                title: Text(user.username),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.othersProfilePage,
                                    arguments: user);
                              },
                            ),
                            MaterialButton(
                              child: Card(
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(mentorship.description),
                                        Text(
                                            'Contact: ${mentorship.mentorEmail}'),
                                        Text('Price: ${mentorship.price}'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.editMentorshipPage,
                                    arguments: mentorship);
                              },
                            )
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.addMentorshipPage);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
