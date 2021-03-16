import 'package:elearning_platform_mobile/src/containers/playlists/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class SelectVideosPage extends StatefulWidget {
  const SelectVideosPage({Key key}) : super(key: key);

  @override
  _SelectVideosPageState createState() => _SelectVideosPageState();
}

class _SelectVideosPageState extends State<SelectVideosPage> {
  List<bool> isSelected = <bool>[];

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetMyVideos());

    for (int i = 0; i < 100; i++) {
      isSelected.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlaylistInfoContainer(
      builder: (BuildContext context, PlaylistInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Selecting videos'),
            actions: <Widget>[
              FlatButton(
                child: const Text('Share'),
                onPressed: () {
                  if (info.videoRefs != null) {
                    Navigator.pushNamed(context, AppRoutes.home);
                    StoreProvider.of<AppState>(context)
                        .dispatch(const CreatePlaylist());
                  } else {
                    // show error
                  }
                },
              )
            ],
          ),
          body: VideosContainer(
            builder: (BuildContext context, List<Video> videos) {
              return ListView.builder(
                itemCount: videos.length,
                itemBuilder: (BuildContext context, int index) {
                  final Video video = videos[index];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(video.description),
                          Checkbox(
                              value: isSelected[index],
                              onChanged: (bool value) {
                                setState(() {
                                  isSelected[index] = value;
                                });
                                isSelected[index]
                                    ? StoreProvider.of<AppState>(context)
                                        .dispatch(UpdatePlaylistInfo(
                                            addVideoRef: video.id))
                                    : StoreProvider.of<AppState>(context)
                                        .dispatch(UpdatePlaylistInfo(
                                            removeVideoRef: video.id));
                              })
                        ],
                      )
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
