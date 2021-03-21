import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class EditPlaylistPage extends StatefulWidget {
  const EditPlaylistPage({this.currentPlaylist, Key key}) : super(key: key);

  final Playlist currentPlaylist;

  @override
  _EditPlaylistPageState createState() => _EditPlaylistPageState();
}

class _EditPlaylistPageState extends State<EditPlaylistPage> {

  @override
  Widget build(BuildContext context) {

    return PlaylistInfoContainer(
      builder: (BuildContext context, PlaylistInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.currentPlaylist.id),
          ),
          body: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'description',
                ),
                initialValue: widget.currentPlaylist.description,
                keyboardType: TextInputType.name,
                onChanged: (String value) {
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdatePlaylistInfo(description: value));
                },
                validator: (String value) {
                  if (value.length < 3) {
                    return 'Please choose a bigger description';
                  }

                  return null;
                },
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    child: const Text('Update'),
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(UpdatePlaylist(id: widget.currentPlaylist.id));
                    },
                  ),
                  MaterialButton(
                    child: const Text('Delete'),
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(UpdatePlaylist(id: widget.currentPlaylist.id));
                      Navigator.pushNamed(context, AppRoutes.profilePage);
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
    );

  }
}
