import 'package:elearning_platform_mobile/src/containers/inquiries/index.dart';
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
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetUserInquiries(),
    );
  }

  void _addVideo() async {
    final FilePickerResult file = await FilePicker.platform.pickFiles();
    final String path = file.files.single.path;
    print(path);
    if (path != null) {
      StoreProvider.of<AppState>(context).dispatch(
        UpdateVideoInfo(addVideo: path),
      );
      Navigator.pushNamed(context, AppRoutes.addVideoPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InquiriesContainer(
      builder: (BuildContext context, List<Inquiry> inquiries) {
        final List<Inquiry> unreadNotifications = inquiries
            .where((Inquiry element) => element.read == false)
            .toList();
        final List<String> unreadNotificationsIds = <String>[];
        inquiries.forEach((Inquiry element) {
          unreadNotificationsIds.add(element.id);
        });

        return Scaffold(
          appBar: AppBar(
            title: const Text('E-learning Platform'),
            leading: const FlutterLogo(),
            centerTitle: false,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle_outline),
                onPressed: () {
                  _addContentModal(context);
                },
              ),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.notificationsPage,
                            arguments: inquiries);
                        if (unreadNotifications.isNotEmpty) {
                          StoreProvider.of<AppState>(context, listen: false)
                              .dispatch(ReadInquiries(unreadNotificationsIds));
                        }
                      },
                    ),
                  ),
                  if (unreadNotifications.isNotEmpty)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: Text(
                          unreadNotifications.length.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
          body: const VideosFeedPage(),
        );
      },
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
                        child: const Text(
                          'Add content',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
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
                            child: const Text(
                              'Video',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
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
                            child: const Text(
                              'Playlist',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
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
