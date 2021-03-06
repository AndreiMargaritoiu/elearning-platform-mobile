import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/presentation/discover/discover_page.dart';
import 'package:elearning_platform_mobile/src/presentation/feed/feed_page.dart';
import 'package:elearning_platform_mobile/src/presentation/mentoring/mentoring_page.dart';
import 'package:elearning_platform_mobile/src/presentation/profile/profile_page.dart';
import 'package:elearning_platform_mobile/src/presentation/content/content_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const FeedPage(),
        const ContentPage(),
        const DiscoverPage(),
        const MentoringPage(),
        const ProfilePage(),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        onTap: (int i) async {
          setState(() => _page = i);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: 'content',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'mentoring',
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
