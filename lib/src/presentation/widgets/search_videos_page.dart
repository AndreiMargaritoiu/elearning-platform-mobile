import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class SearchVideosPage extends StatelessWidget {
  const SearchVideosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return SearchVideosContainer(
          builder: (BuildContext context, List<Video> videos) {
            return ListView.builder(
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index) {
                final Video video = videos[index];

                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.videoPlayer,
                          arguments: video);
                    },
                    child: ListTile(
                      title: Text(
                        video.title,
                        style: const TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        video.description,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ));
              },
            );
          },
        );
      },
    );
  }
}
