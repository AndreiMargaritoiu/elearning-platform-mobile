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

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetAllMentorships(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find your mentor'),
      ),
      body: UsersContainer(
        builder: (BuildContext context, Map<String, AppUser> users) {
          return MentorshipsContainer(
            builder: (BuildContext context, List<Mentorship> mentorships) {
              return Stack(
                children: <Widget>[
                  ListView.builder(
                    itemCount: mentorships.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Mentorship mentorship = mentorships[index];
                      final AppUser user = users[mentorship.mentorId];

                      return Container(
                        width: 150,
                        child: Card(
                          child: Column(
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
                                title: Text(
                                  user.username,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.othersProfilePage,
                                      arguments: user);
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, bottom: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        mentorship.description,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'Contact: ${mentorship.mentorEmail}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'Price: ${mentorship.price} €',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.editMentorshipPage,
                                      arguments: mentorship);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        child: const Icon(Icons.add),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRoutes.addMentorshipPage);
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
