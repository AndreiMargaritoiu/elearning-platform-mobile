import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class FollowingListPage extends StatefulWidget {
  const FollowingListPage({this.currentUser, Key key}) : super(key: key);

  final AppUser currentUser;

  @override
  _FollowingListPageState createState() => _FollowingListPageState();
}

class _FollowingListPageState extends State<FollowingListPage> {

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser appUser) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.currentUser.username),
          ),
          body: UsersContainer(
            builder: (BuildContext context, Map<String, AppUser> users) {
              return ListView.builder(
                itemCount: widget.currentUser.following.length,
                itemBuilder: (BuildContext context, int index) {
                  final AppUser user = users[widget.currentUser.following[index]];
                  final bool isFollowed =
                      widget.currentUser.following.contains(user.uid);

                  return MaterialButton(
                      child: ListTile(
                        leading: user.photoUrl != null
                            ? Image.network(user.photoUrl)
                            : null,
                        title: Text('@${user.username}'),
                        subtitle: Text(user.email),
                        trailing: appUser.uid != user.uid
                            ? FlatButton(
                                child: Text(isFollowed ? 'Unfollow' : 'Follow'),
                                onPressed: () {
                                  AppAction action;
                                  if (isFollowed) {
                                    action = UpdateFollowing(remove: user.uid);
                                  } else {
                                    action = UpdateFollowing(add: user.uid);
                                  }
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(action);
                                },
                              )
                            : null,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.othersProfilePage,
                            arguments: user);
                      });
                },
              );
            },
          ),
        );
      },
    );
  }
}
