import 'package:elearning_platform_mobile/src/containers/playlists/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:file_picker/file_picker.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

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

  void _addVideoFab() async {
    final FilePickerResult file = await FilePicker.platform.pickFiles();
    final String path = file.files.single.path;
    print(path);
    if (path != null) {
      StoreProvider.of<AppState>(context)
          .dispatch(UpdateVideoInfo(addVideo: path));
      Navigator.pushNamed(context, AppRoutes.videoDetails);
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
              FlatButton(
                child: const Text('Logout'),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const SignOut());
                },
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  if (user.photoUrl != null)
                    Image.network(
                      user.photoUrl,
                      height: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    )
                  else
                    FloatingActionButton(
                        child: const Icon(Icons.image), onPressed: () {}),
                  Text(user.email)
                ],
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                      child: const Icon(Icons.playlist_play),
                      onPressed: () {
                        setState(() {
                          isPlaylistPage = true;
                        });
                      }),
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
              FloatingActionButton(
                child: const Icon(Icons.add),
                heroTag: isPlaylistPage ? 'btn1' : 'btn2',
                onPressed: () {
                  isPlaylistPage
                      ? Navigator.pushNamed(
                          context, AppRoutes.createPlaylistPage)
                      : _addVideoFab();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
