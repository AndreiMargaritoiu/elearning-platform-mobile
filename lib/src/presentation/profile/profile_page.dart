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

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetMyPlaylists());

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetMyVideos());
  }

  void _addVideo() async {
    final FilePickerResult file = await FilePicker.platform.pickFiles();
    final String path = file.files.single.path;
    print(path);
    if (path != null) {
      StoreProvider.of<AppState>(context)
          .dispatch(UpdateVideoInfo(addVideo: path));
      Navigator.pushNamed(context, AppRoutes.addVideoPage);
    }
  }

  void _handleDotsMenuClick(String value) {
    switch (value) {
      case 'Logout':
        StoreProvider.of<AppState>(context).dispatch(const SignOut());
        break;
      case 'Settings':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
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
                  return <String>{'Logout', 'Settings'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
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
                      FloatingActionButton(
                          child: const Icon(Icons.image),
                          onPressed: () async {
                            final PickedFile file = await ImagePicker()
                                .getImage(source: ImageSource.gallery);
                            if (file != null) {
                              StoreProvider.of<AppState>(context)
                                  .dispatch(UpdateUser(file.path, user.uid));
                            }
                          }),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(user.email))
                  ],
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
                      return ListView.builder(
                        itemCount: playlists.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final Playlist playlist = playlists[index];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              MaterialButton(
                                child: Text(playlist.title),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.editPlaylistPage,
                                      arguments: playlist);
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
                  )
                else
                  VideosContainer(
                    builder: (BuildContext context, List<Video> videos) {
                      return ListView.builder(
                        itemCount: videos.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final Video video = videos[index];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              MaterialButton(
                                child: Text(video.description),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.editVideoPage,
                                      arguments: video);
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
              ],
            ),
          ),
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
                        child: const Text('Add content'),
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
                            child: const Text('Video'),
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
                            child: const Text('Playlist'),
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
