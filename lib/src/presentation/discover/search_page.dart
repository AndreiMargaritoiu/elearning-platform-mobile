import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/auth/index.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_playlists_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_videos_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isSearchUsers = true;
  bool isSearchPlaylists = false;
  bool isSearchVideos = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'search',
            hintStyle: TextStyle(fontSize: 18),
            prefixIcon: Icon(
              Icons.search,
            ),
          ),
          onChanged: (String value) {
            isSearchUsers
                ? StoreProvider.of<AppState>(context).dispatch(
                    SearchUsers(value),
                  )
                : isSearchPlaylists
                    ? StoreProvider.of<AppState>(context).dispatch(
                        SearchPlaylists(value),
                      )
                    : StoreProvider.of<AppState>(context).dispatch(
                        SearchVideos(value),
                      );
          },
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              Navigator.popUntil(
                context,
                ModalRoute.withName(AppRoutes.home),
              );
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  MaterialButton(
                    child: const Text(
                      'People',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          isSearchUsers = true;
                          isSearchPlaylists = false;
                          isSearchVideos = false;
                        },
                      );
                    },
                  ),
                  Container(
                    height: isSearchUsers ? 2 : 0,
                    width: MediaQuery.of(context).size.width * .3,
                    color: Colors.grey,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    child: const Text(
                      'Playlists',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          isSearchPlaylists = true;
                          isSearchUsers = false;
                          isSearchVideos = false;
                        },
                      );
                    },
                  ),
                  Container(
                    height: isSearchPlaylists ? 2 : 0,
                    width: MediaQuery.of(context).size.width * .3,
                    color: Colors.grey,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    child: const Text(
                      'Videos',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          isSearchVideos = true;
                          isSearchUsers = false;
                          isSearchPlaylists = false;
                        },
                      );
                    },
                  ),
                  Container(
                    height: isSearchVideos ? 2 : 0,
                    width: MediaQuery.of(context).size.width * .3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: isSearchUsers
                ? const SearchUsersPage(showFollow: true)
                : isSearchPlaylists
                    ? const SearchPlaylistsPage()
                    : const SearchVideosPage(),
          )
        ],
      ),
    );
  }
}
