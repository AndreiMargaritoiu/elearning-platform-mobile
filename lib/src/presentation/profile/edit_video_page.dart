import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:flutter_redux/flutter_redux.dart';

class EditVideoPage extends StatefulWidget {
  const EditVideoPage({this.currentVideo, Key key}) : super(key: key);

  final Video currentVideo;

  @override
  _EditVideoPageState createState() => _EditVideoPageState();
}

class _EditVideoPageState extends State<EditVideoPage> {
  @override
  Widget build(BuildContext context) {
    return VideoInfoContainer(
      builder: (BuildContext context, VideoInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.currentVideo.id),
          ),
          body: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'description',
                ),
                initialValue: widget.currentVideo.description,
                keyboardType: TextInputType.name,
                onChanged: (String value) {
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdateVideoInfo(description: value));
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
                          .dispatch(UpdateVideo(id: widget.currentVideo.id));
                    },
                  ),
                  MaterialButton(
                    child: const Text('Delete'),
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(DeleteVideo(id: widget.currentVideo.id));
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
