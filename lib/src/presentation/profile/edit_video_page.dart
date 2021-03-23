import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';


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
            title: const Text('Edit video page'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'title',
                  ),
                  initialValue: widget.currentVideo.title,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdateVideoInfo(title: value),);
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'description',
                  ),
                  initialValue: widget.currentVideo.description,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdateVideoInfo(description: value),);
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
                            .dispatch(UpdateVideo(widget.currentVideo.id),);
                        Navigator.popUntil(
                            context, ModalRoute.withName(AppRoutes.home),);
                      },
                    ),
                    MaterialButton(
                      child: const Text('Delete'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context)
                            .dispatch(DeleteVideo(widget.currentVideo.id),);
                        Navigator.popUntil(
                            context, ModalRoute.withName(AppRoutes.home),);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
