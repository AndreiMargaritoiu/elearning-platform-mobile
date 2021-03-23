import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class PlaylistVideosPage extends StatefulWidget {
  const PlaylistVideosPage({this.playlist, Key key}) : super(key: key);

  final Playlist playlist;

  @override
  _PlaylistVideosPageState createState() => _PlaylistVideosPageState();
}

class _PlaylistVideosPageState extends State<PlaylistVideosPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(GetVideosByPlaylistId(widget.playlist.id),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.playlist.title),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                      Navigator.pushNamed(context, AppRoutes.videoPlayer,
                          arguments: video);
                    },
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
