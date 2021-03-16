import 'package:elearning_platform_mobile/src/containers/playlists/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class PlaylistsFeedPage extends StatefulWidget {
  const PlaylistsFeedPage({Key key}) : super(key: key);

  @override
  _PlaylistsFeedPageState createState() => _PlaylistsFeedPageState();
}

class _PlaylistsFeedPageState extends State<PlaylistsFeedPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetAllPlaylists());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(),
        centerTitle: false,
      ),
      body: UsersContainer(
        builder: (BuildContext context, Map<String, AppUser> users) {
          return PlaylistsContainer(
            builder: (BuildContext context, List<Playlist> playlists) {
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
                      MaterialButton(
                          child: Text(playlist.title), onPressed: () {})
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
