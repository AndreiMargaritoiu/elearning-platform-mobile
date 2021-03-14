import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
//        .dispatch(const ListenForVideos());
        .dispatch(const GetMyVideos());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(),
        centerTitle: false,
      ),
      body: UsersContainer(
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
                        title: Text(user.username),
                      ),
                      MaterialButton(
                          child: Text(video.description),
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.videoPlayer,
                                arguments: video.video);
                          })
                    ],
                  );
                });
          });

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
        },
      ),
    );
  }
}
