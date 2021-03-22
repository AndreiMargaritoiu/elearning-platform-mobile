import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:file_picker/file_picker.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/presentation/videos/videos_feed_page.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  bool isSearchActive = false;

  @override
  void initState() {
    super.initState();
  }

  void _addVideo() async {
    final FilePickerResult file = await FilePicker.platform.pickFiles();
    final String path = file.files.single.path;
    print(path);
    if (path != null) {
      StoreProvider.of<AppState>(context)
          .dispatch(UpdateVideoInfo(addVideo: path));
      Navigator.pushNamed(context, AppRoutes.addVideoPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {
              _addContentModal(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_outline),
            onPressed: () {
              _addContentModal(context);
            },
          ),
        ],
      ),
      body: const VideosFeedPage(),

//          return PostsContainer(
//            builder: (BuildContext context, List<Post> posts) {
//              return ListView.builder(
//                itemCount: posts.length,
//                itemBuilder: (BuildContext context, int index) {
//                  final Post post = posts[index];
//                  final AppUser user = users[post.uid];
//
//                  return Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      ListTile(
//                        leading: user.photoUrl != null
//                            ? CircleAvatar(
//                                backgroundImage: NetworkImage(user.photoUrl),
//                              )
//                            : CircleAvatar(
//                                backgroundColor: Colors.grey.shade900,
//                                child: Text(
//                                  user.username[0].toUpperCase(),
//                                ),
//                              ),
//                        title: Text(user.username),
//                      ),
//                      Image.network(
//                        post.images.first,
//                        height: MediaQuery.of(context).size.width,
//                        fit: BoxFit.cover,
//                      ),
//                      Row(
//                        children: <Widget>[
//                          IconButton(
//                            icon: const Icon(Icons.favorite_outline),
//                            onPressed: () {},
//                          ),
//                          IconButton(
//                            icon: const Icon(Icons.chat_bubble_outline),
//                            onPressed: () {},
//                          ),
//                          IconButton(
//                            icon: const Icon(Icons.send_outlined),
//                            onPressed: () {},
//                          ),
//                          const Spacer(),
//                          IconButton(
//                            icon: const Icon(Icons.bookmark_border_outlined),
//                            onPressed: () {},
//                          ),
//                        ],
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                        child: Text.rich(
//                          TextSpan(
//                            text: user.username,
//                            style: const TextStyle(
//                              fontWeight: FontWeight.bold,
//                            ),
//                            children: <TextSpan>[
//                              TextSpan(
//                                text: ' ${post.description}',
//                                style: const TextStyle(
//                                  fontWeight: FontWeight.normal,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      const Divider(),
//                    ],
//                  );
//                },
//              );
//            },
//          );
//        },
//      ),
    );
  }

  void _addContentModal(BuildContext context) {
    showModalBottomSheet<Widget>(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: <Widget>[
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * .4,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: const Text('Add content'),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.add_to_queue_outlined),
                            onPressed: () {
                              _addVideo();
                            },
                          ),
                          MaterialButton(
                            child: const Text('Video'),
                            onPressed: () {
                              _addVideo();
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.playlist_add_rounded),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.createPlaylistPage);
                            },
                          ),
                          MaterialButton(
                            child: const Text('Playlist'),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.createPlaylistPage);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
