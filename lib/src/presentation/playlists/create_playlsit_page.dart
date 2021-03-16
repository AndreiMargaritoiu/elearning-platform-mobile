import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/playlists/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CreatePlaylistPage extends StatefulWidget {
  const CreatePlaylistPage({Key key}) : super(key: key);

  @override
  _CreatePlaylistPageState createState() => _CreatePlaylistPageState();
}

class _CreatePlaylistPageState extends State<CreatePlaylistPage> {
  String dropdownValue = 'School';

  @override
  Widget build(BuildContext context) {
    return PlaylistInfoContainer(
      builder: (BuildContext context, PlaylistInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add playlist'),
            actions: <Widget>[
              FlatButton(
                child: const Text('Next'),
                onPressed: () {
                  if (info.title != null) {
                    Navigator.pushNamed(context, AppRoutes.selectVideosPage);
                    if (info.category == null) {
                      StoreProvider.of<AppState>(context)
                          .dispatch(UpdatePlaylistInfo(category: dropdownValue));
                    }
                  } else {
                    // show error
                  }
                },
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(hintText: 'Write a title...'),
                onChanged: (String value) {
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdatePlaylistInfo(title: value));
                },
              ),
              TextField(
                decoration:
                    const InputDecoration(hintText: 'Write a description...'),
                onChanged: (String value) {
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdatePlaylistInfo(description: value));
                },
              ),
              DropdownButton<String>(
                value: dropdownValue,
                items: <String>['School', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdatePlaylistInfo(category: newValue));
                  });
                },
              )
            ],
          ),
        );
      },
    );
  }
}
