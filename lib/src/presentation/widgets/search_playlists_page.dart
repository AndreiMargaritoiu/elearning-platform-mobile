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

                return MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.playlistVideosPage,
                        arguments: playlist);
                  },
                  child: Text(playlist.title),
                );
              },
            );
          },
        );
      },
    );
  }
}
