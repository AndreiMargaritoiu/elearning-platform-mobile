import 'package:elearning_platform_mobile/src/presentation/discover/discover_page.dart';
import 'package:elearning_platform_mobile/src/presentation/playlists/create_playlsit_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/profile_page.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/feed/feed_page.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const FeedPage(),
        const DiscoverPage(),
        Container(color: Colors.blue),
        const CreatePlaylistPage(),
        const ProfilePage(),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: (int i) async {
          if (i == 2) {
//            final PickedFile file = await ImagePicker().getImage(source: ImageSource.gallery);
//            if (file != null) {
//              StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addImage: file.path));
//              Navigator.pushNamed(context, AppRoutes.createPost);
//            }

            final FilePickerResult file = await FilePicker.platform.pickFiles();
            final String path = file.files.single.path;
            print(path);
            if (path != null) {
              StoreProvider.of<AppState>(context)
                  .dispatch(UpdateVideoInfo(addVideo: path));
              Navigator.pushNamed(context, AppRoutes.videoDetails);
              // StoreProvider.of<AppState>(context).dispatch(const AddVideo());
            }
          } else {
            setState(() => _page = i);
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_sharp),
            label: 'feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_outlined),
            label: 'trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
