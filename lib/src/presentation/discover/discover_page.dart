import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  bool isSearchActive = false;

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetAllPlaylists());

//    KeyboardVisibilityNotification().addNewListener(
//      onChange: (bool visible) {
//        setState(() {
//          isSearchActive = true;
//          print('se ridica');
//        });
//      },
//    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSearchActive
          ? const SearchUsersPage(showFollow: true)
          : Column(
              children: <Widget>[
                Container(
                  height: 80,
                  child: const SearchUsersPage(showFollow: true),
                ),
                Expanded(
                  child: UsersContainer(
                    builder:
                        (BuildContext context, Map<String, AppUser> users) {
                      return PlaylistsContainer(
                        builder:
                            (BuildContext context, List<Playlist> playlists) {
                          return ListView.builder(
                            itemCount: playlists.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Playlist playlist = playlists[index];
                              final AppUser user = users[playlist.uid];

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
                                            backgroundColor:
                                                Colors.grey.shade900,
                                            child: Text(
                                              user.username[0].toUpperCase(),
                                            ),
                                          ),
                                    title: Text(user.username),
                                  ),
                                  MaterialButton(
                                      child: Text(playlist.title),
                                      onPressed: () {})
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
    );
  }
}
