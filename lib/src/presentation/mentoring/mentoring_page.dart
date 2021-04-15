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
    return SafeArea(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 120.0),
                  child: Text(
                    'Inspire others, get inspired',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Wrap(
                  spacing: 40.0,
                  children: <String>[
                    'School',
                    'Faculty',
                    'Other',
                  ].map((String category) {
                    return ChoiceChip(
                      label: Text(category),
                      selected: false,
                      onSelected: (bool isSelected) {
                        if (isSelected) {
                          StoreProvider.of<AppState>(context, listen: false)
                              .dispatch(
                            GetCategoryMentorships(category: category),
                          );
                        } else {
                          StoreProvider.of<AppState>(context, listen: false)
                              .dispatch(
                            const GetAllMentorships(),
                          );
                        }
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20.0),
                UsersContainer(
                  builder: (BuildContext context, Map<String, AppUser> users) {
                    return MentorshipsContainer(
                      builder:
                          (BuildContext context, List<Mentorship> mentorships) {
                        return ListView.builder(
                          itemCount: mentorships.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
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
                                              backgroundColor:
                                                  Colors.grey.shade900,
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
                                        Navigator.pushNamed(context,
                                            AppRoutes.othersProfilePage,
                                            arguments: user);
                                      },
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 16, right: 8, bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Flexible(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    right: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      mentorship.description,
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.blueAccent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4.0),
                                                        child: Text(
                                                          'Contact: ${mentorship.mentorEmail}',
                                                          style:
                                                              const TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              child: Text(
                                                '${mentorship.price} €/hour',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(context,
                                            AppRoutes.editMentorshipPage,
                                            arguments: mentorship);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Align(
              alignment: Alignment.bottomRight,
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
