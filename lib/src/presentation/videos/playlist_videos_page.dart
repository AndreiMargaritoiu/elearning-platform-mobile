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

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      GetVideosByPlaylistId(widget.playlist.id),
    );
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

              return GestureDetector(
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (video.thumbnailUrl != null &&
                          video.thumbnailUrl.isNotEmpty)
                        Image.network(
                          video.thumbnailUrl,
                          height: MediaQuery.of(context).size.width / 16 * 9,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )
                      else
                        Container(
                          height: MediaQuery.of(context).size.width / 16 * 9,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              video.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
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
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.videoPlayer,
                      arguments: video);
                },
              );
            },
          );
        },
      ),
    );
  }
}
