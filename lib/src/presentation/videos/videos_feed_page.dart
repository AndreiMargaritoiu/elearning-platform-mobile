import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class VideosFeedPage extends StatefulWidget {
  const VideosFeedPage({Key key}) : super(key: key);

  @override
  _VideosFeedPageState createState() => _VideosFeedPageState();
}

class _VideosFeedPageState extends State<VideosFeedPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const ListenForVideos());
  }

  @override
  Widget build(BuildContext context) {
    return UsersContainer(
      builder: (BuildContext context, Map<String, AppUser> users) {
        return VideosContainer(
          builder: (BuildContext context, List<Video> videos) {
            return ListView.builder(
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index) {
                final Video video = videos[index];
                final AppUser user = users[video.uid];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      child: ListTile(
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
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.othersProfilePage,
                            arguments: user);
                      },
                    ),
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
        );
      },
    );
  }
}
