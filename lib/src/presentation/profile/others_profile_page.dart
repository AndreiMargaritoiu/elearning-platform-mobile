import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class OthersProfilePage extends StatefulWidget {
  const OthersProfilePage({this.searchedUser, Key key}) : super(key: key);

  final AppUser searchedUser;

  @override
  _OthersProfilePageState createState() => _OthersProfilePageState();
}

class _OthersProfilePageState extends State<OthersProfilePage> {
  bool isPlaylistPage = true;

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      GetPlaylistsByUid(id: widget.searchedUser.uid),
    );

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      GetVideosByUid(id: widget.searchedUser.uid),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return PlaylistsContainer(
          builder: (BuildContext context, List<Playlist> playlists) {
            return VideosContainer(
              builder: (BuildContext context, List<Video> videos) {
                final AppUser searchedUser = widget.searchedUser;
                final bool isFollowed =
                    user.following.contains(searchedUser.uid);
                return Scaffold(
                  appBar: AppBar(
                    title: Text(searchedUser.username),
                    actions: <Widget>[
                      MaterialButton(
                        child: Text(
                          isFollowed ? 'Unfollow' : 'Follow',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          AppAction action;
                          if (isFollowed) {
                            action = UpdateFollowing(remove: searchedUser.uid);
                          } else {
                            action = UpdateFollowing(add: searchedUser.uid);
                          }
                          StoreProvider.of<AppState>(context).dispatch(action);
                        },
                      ),
                    ],
                  ),
                  body: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            if (searchedUser.photoUrl != null)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.network(
                                  searchedUser.photoUrl,
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              )
                            else
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade900,
                                radius: 30,
                                child: Text(
                                  searchedUser.username[0].toUpperCase(),
                                ),
                              ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              user.following.length.toString(),
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Text(
                                              'Following',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              playlists.length.toString(),
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Text(
                                              'Playlists',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              videos.length.toString(),
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Text(
                                              'Videos',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                child: const Icon(Icons.playlist_play),
                                onPressed: () {
                                  setState(
                                    () {
                                      isPlaylistPage = true;
                                    },
                                  );
                                },
                              ),
                              Container(
                                height: isPlaylistPage ? 2 : 0,
                                width: MediaQuery.of(context).size.width * .4,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                child: const Icon(Icons.video_collection),
                                onPressed: () {
                                  setState(
                                    () {
                                      isPlaylistPage = false;
                                    },
                                  );
                                },
                              ),
                              Container(
                                height: isPlaylistPage ? 0 : 2,
                                width: MediaQuery.of(context).size.width * .4,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      if (isPlaylistPage)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: ListView.builder(
                              itemCount: playlists.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                final Playlist playlist = playlists[index];

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Card(
                                        child: Row(
                                          children: <Widget>[
                                            if (playlist.thumbnailUrl != null &&
                                                playlist
                                                    .thumbnailUrl.isNotEmpty)
                                              Image.network(
                                                playlist.thumbnailUrl,
                                                height: 90,
                                                width: 160,
                                                fit: BoxFit.cover,
                                              )
                                            else
                                              Container(
                                                height: 90,
                                                width: 160,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                ),
                                              ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 8, top: 8, bottom: 8),
                                              width: 192,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    playlist.title,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Videos: ${playlist.videoRefs.length}',
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(context,
                                            AppRoutes.playlistVideosPage,
                                            arguments: playlist);
                                      },
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        )
                      else
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: ListView.builder(
                              itemCount: videos.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                final Video video = videos[index];

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Card(
                                        child: Row(
                                          children: <Widget>[
                                            if (video.thumbnailUrl != null &&
                                                video.thumbnailUrl.isNotEmpty)
                                              Image.network(
                                                video.thumbnailUrl,
                                                height: 90,
                                                width: 160,
                                                fit: BoxFit.cover,
                                              )
                                            else
                                              Container(
                                                height: 90,
                                                width: 160,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                ),
                                              ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 8, top: 8, bottom: 8),
                                              width: 192,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    video.title,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(
                                                    video.description,
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, AppRoutes.videoPlayer,
                                            arguments: video);
                                      },
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
