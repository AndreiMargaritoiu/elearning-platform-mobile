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
        final AppUser user = widget.searchedUser;
        return Scaffold(
          appBar: AppBar(
            title: Text(user.username),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    if (user.photoUrl != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child: Image.network(
                          user.photoUrl,
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
                          user.username[0].toUpperCase(),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: <Widget>[
                          Text(user.email),
                        ],
                      ),
                    )
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
                PlaylistsContainer(
                  builder: (BuildContext context, List<Playlist> playlists) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ListView.builder(
                          itemCount: playlists.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            final Playlist playlist = playlists[index];

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(playlist.title),
                                              Text(playlist.description),
                                              Text(
                                                  'Videos: ${playlist.videoRefs.length}'),
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
                        ),
                      ),
                    );
                  },
                )
              else
                VideosContainer(
                  builder: (BuildContext context, List<Video> videos) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
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
                                MaterialButton(
                                  child: Card(
                                    child: Row(
                                      children: <Widget>[
                                        if (video.thumbnailUrl != null &&
                                            video.thumbnailUrl.isNotEmpty)
                                          Image.network(
                                            video.thumbnailUrl,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(video.title),
                                              Text(video.description),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
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
                    );
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
