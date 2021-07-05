import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class PlaylistCarousel extends StatefulWidget {
  const PlaylistCarousel({Key key, this.category}) : super(key: key);

  final String category;

  @override
  _PlaylistCarouselState createState() => _PlaylistCarouselState();
}

class _PlaylistCarouselState extends State<PlaylistCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${widget.category}',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.playlistsFeed,
                      arguments: widget.category);
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        PlaylistsContainer(
          builder: (BuildContext context, List<Playlist> playlists) {
            final List<Playlist> chosenPlaylists = playlists
                .where((Playlist element) =>
                    element.category == '${widget.category}')
                .toList();
            return Container(
              height: 260.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    chosenPlaylists.length < 10 ? chosenPlaylists.length : 10,
                itemBuilder: (BuildContext context, int index) {
                  final Playlist playlist = chosenPlaylists[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.playlistVideosPage,
                          arguments: playlist);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 240.0,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom: 15.0,
                            child: Container(
                              height: 120.0,
                              width: 240.0,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '${playlist.title}',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    const SizedBox(height: 2.0),
                                    Text(
                                      '${playlist.videoRefs.length} videos',
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  playlist.thumbnailUrl,
                                  height: 160,
                                  width: 240,
                                  fit: BoxFit.cover,
                                )),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
