import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class PlaylistsFeedPage extends StatefulWidget {
  const PlaylistsFeedPage({Key key}) : super(key: key);

  @override
  _PlaylistsFeedPageState createState() => _PlaylistsFeedPageState();
}

class _PlaylistsFeedPageState extends State<PlaylistsFeedPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetAllPlaylists(),
    );
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if (playlist.thumbnailUrl != null &&
                              playlist.thumbnailUrl.isNotEmpty)
                            Image.network(
                              playlist.thumbnailUrl,
                              height: MediaQuery.of(context).size.width * 0.877 / 16 * 9,
                              width: MediaQuery.of(context).size.width * 0.877,
                              fit: BoxFit.cover,
                            )
                          else
                            Container(
                              height: MediaQuery.of(context).size.width * 0.877 / 16 * 9,
                              width: MediaQuery.of(context).size.width * 0.877,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  playlist.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Videos: ${playlist.videoRefs.length}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  playlist.description,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
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
