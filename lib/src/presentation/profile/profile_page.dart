import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:file_picker/file_picker.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isPlaylistPage = true;

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetVideosByUid(),
    );

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetPlaylistsByUid(),
    );
  }

  void _addVideo() async {
    final FilePickerResult file = await FilePicker.platform.pickFiles();
    final String path = file.files.single.path;
    print(path);
    if (path != null) {
      StoreProvider.of<AppState>(context).dispatch(
        UpdateVideoInfo(addVideo: path),
      );
      Navigator.pushNamed(context, AppRoutes.addVideoPage);
    }
  }

  void _handleDotsMenuClick(String value) {
    switch (value) {
      case 'Logout':
        StoreProvider.of<AppState>(context).dispatch(
          const SignOut(),
        );
        break;
      case 'Settings':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return PlaylistsContainer(
          builder: (BuildContext context, List<Playlist> playlists) {
            return VideosContainer(
              builder: (BuildContext context, List<Video> videos) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(user.username),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: () {
                          _addContentModal(context);
                        },
                      ),
                      PopupMenuButton<String>(
                        onSelected: _handleDotsMenuClick,
                        itemBuilder: (BuildContext context) {
                          return <String>{'Settings', 'Logout'}.map(
                            (String choice) {
                              return PopupMenuItem<String>(
                                value: choice,
                                child: Text(choice),
                              );
                            },
                          ).toList();
                        },
                      ),
                    ],
                  ),
                  body: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            if (user.photoUrl != null)
                              Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(80.0),
                                    child: Image.network(
                                      user.photoUrl,
                                      height: 80,
                                      width: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 50,
                                    left: 30,
                                    child: MaterialButton(
                                      child: const Icon(Icons.add),
                                      onPressed: () async {
                                        final PickedFile file =
                                            await ImagePicker().getImage(
                                                source: ImageSource.gallery);
                                        if (file != null) {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(
                                            UpdateUser(file.path, user.uid),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              )
                            else
                              FloatingActionButton(
                                child: const Icon(Icons.image),
                                onPressed: () async {
                                  final PickedFile file = await ImagePicker()
                                      .getImage(source: ImageSource.gallery);
                                  if (file != null) {
                                    StoreProvider.of<AppState>(context)
                                        .dispatch(
                                      UpdateUser(file.path, user.uid),
                                    );
                                  }
                                },
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
                                        GestureDetector(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                user.following.length
                                                    .toString(),
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
                                          onTap: () {
                                            Navigator.pushNamed(context,
                                                AppRoutes.followingListPage,
                                                arguments: user);
                                          },
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
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: ListView.builder(
                              itemCount: playlists.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                final Playlist playlist = playlists[index];

                                return Container(
                                  child: GestureDetector(
                                    child: Card(
                                      child: Row(
                                        children: <Widget>[
                                          Stack(
                                            children: <Widget>[
                                              if (playlist.thumbnailUrl !=
                                                      null &&
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
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              Positioned(
                                                right: 4.0,
                                                bottom: 4.0,
                                                child: Container(
                                                  height: 40.0,
                                                  width: 80.0,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                      '${playlist.videoRefs.length} videos',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Flexible(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 8, top: 8, bottom: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
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
                                                    playlist.description,
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, AppRoutes.editPlaylistPage,
                                          arguments: playlist);
                                    },
                                  ),
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
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
                                            Flexible(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(8),
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
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, AppRoutes.editVideoPage,
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

  void _addContentModal(BuildContext context) {
    showModalBottomSheet<Widget>(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: <Widget>[
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * .4,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: const Text(
                          'Add content',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.add_to_queue_outlined),
                            onPressed: () {
                              _addVideo();
                            },
                          ),
                          MaterialButton(
                            child: const Text(
                              'Video',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              _addVideo();
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.playlist_add_rounded),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.createPlaylistPage);
                            },
                          ),
                          MaterialButton(
                            child: const Text(
                              'Playlist',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.createPlaylistPage);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
