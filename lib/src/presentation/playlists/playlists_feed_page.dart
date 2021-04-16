import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class PlaylistsFeedPage extends StatefulWidget {
  const PlaylistsFeedPage({Key key, this.category}) : super(key: key);

  final String category;

  @override
  _PlaylistsFeedPageState createState() => _PlaylistsFeedPageState();
}

class _PlaylistsFeedPageState extends State<PlaylistsFeedPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      GetCategoryPlaylists(widget.category),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, true);
            StoreProvider.of<AppState>(context, listen: false).dispatch(
              const GetAllPlaylists(),
            );
          },
        ),
      ),
      body: UsersContainer(
        builder: (BuildContext context, Map<String, AppUser> users) {
          return PlaylistsContainer(
            builder: (BuildContext context, List<Playlist> playlists) {
              // final List<Playlist> filteredPlaylists = playlists
              //     .where((Playlist element) =>
              //         element.category == '${widget.category}')
              //     .toList();
              return ListView.builder(
                itemCount: playlists.length,
                itemBuilder: (BuildContext context, int index) {
                  final Playlist playlist = playlists[index];
                  final AppUser user = users[playlist.uid];

                  return Column(
                    children: <Widget>[
                      ListTile(
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
                        title: Text(
                          user.username,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.othersProfilePage,
                              arguments: user);
                        },
                      ),
                      GestureDetector(
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height:
                                    MediaQuery.of(context).size.width / 16 * 9,
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: <Widget>[
                                    Hero(
                                      tag: playlist.thumbnailUrl,
                                      child: Image.network(
                                        playlist.thumbnailUrl,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                16 *
                                                9,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      right: 10.0,
                                      bottom: 10.0,
                                      child: Container(
                                        height: 40.0,
                                        width: 100.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            '${playlist.videoRefs.length} videos',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8, left: 16, right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      playlist.title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
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
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.playlistVideosPage,
                              arguments: playlist);
                        },
                      )
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
