import 'package:elearning_platform_mobile/src/containers/mentoring/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

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
        .dispatch(const GetAllMentorships());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            ListTile(
                              leading: user.photoUrl != null
                                  ? CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(user.photoUrl),
                                    )
                                  : CircleAvatar(
                                      backgroundColor: Colors.grey.shade900,
                                      child: Text(
                                        user.username[0].toUpperCase(),
                                      ),
                                    ),
                              title: Text(user.username),
                            ),
                            Text(mentorship.description),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(
                  context, AppRoutes.addMentorshipPage);
            },
          ),
        ],
      ),
    );
  }
}
