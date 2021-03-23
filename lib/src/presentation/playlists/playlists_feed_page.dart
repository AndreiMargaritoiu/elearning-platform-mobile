import 'package:elearning_platform_mobile/src/presentation/routes.dart';
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
    return UsersContainer(
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
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            if (playlist.thumbnailUrl != null &&
                                playlist.thumbnailUrl.isNotEmpty)
                              Image.network(
                                playlist.thumbnailUrl,
                                height: 120,
                                width: 80,
                                fit: BoxFit.cover,
                              )
                            else
                              Container(
                                height: 120,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 8, bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(playlist.title),
                                  Text(playlist.description),
                                  Text('Videos: ${playlist.videoRefs.length}'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.playlistVideosPage,
                            arguments: playlist);
                      },
                    )
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
