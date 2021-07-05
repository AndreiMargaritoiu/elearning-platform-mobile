import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class SearchPlaylistsPage extends StatelessWidget {
  const SearchPlaylistsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return SearchPlaylistsContainer(
          builder: (BuildContext context, List<Playlist> playlists) {
            return ListView.builder(
              itemCount: playlists.length,
              itemBuilder: (BuildContext context, int index) {
                final Playlist playlist = playlists[index];

                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.playlistVideosPage,
                          arguments: playlist);
                    },
                    child: ListTile(
                      title: Text(
                        playlist.title,
                        style: const TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        playlist.description,
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
