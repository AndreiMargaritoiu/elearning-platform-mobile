import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class SearchUsersPage extends StatelessWidget {
  const SearchUsersPage({Key key, this.showFollow = false}) : super(key: key);

  final bool showFollow;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return SearchUsersContainer(
          builder: (BuildContext context, List<AppUser> users) {
            return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final AppUser user = users[index];
                  final bool isFollowed =
                      currentUser.following.contains(user.uid);

                  return MaterialButton(
                      child: ListTile(
                        leading: user.photoUrl != null
                            ? Image.network(user.photoUrl)
                            : null,
                        title: Text('@${user.username}'),
                        subtitle: Text(user.email),
                        trailing: showFollow
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
                      }
                  );
                },
              );
          },
        );
      },
    );
  }
}
