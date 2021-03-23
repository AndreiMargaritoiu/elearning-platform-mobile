import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class AddMentorshipPage extends StatefulWidget {
  const AddMentorshipPage({Key key}) : super(key: key);

  @override
  _AddMentorshipPageState createState() => _AddMentorshipPageState();
}

class _AddMentorshipPageState extends State<AddMentorshipPage> {

  @override
  Widget build(BuildContext context) {
    return MentorshipInfoContainer(
      builder: (BuildContext context, MentorshipInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add mentorship'),
            actions: <Widget>[
              FlatButton(
                child: const Text('Add'),
                onPressed: () {
                  if (info.description != null) {
                    StoreProvider.of<AppState>(context).dispatch(
                      const AddMentorship(),
                    );
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(AppRoutes.home),
                    );
                  } else {
                    // show error
                  }
                },
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration:
                      const InputDecoration(hintText: 'Write a description...'),
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdateMentorshipInfo(description: value),
                    );
                  },
                ),
                TextField(
                  decoration:
                      const InputDecoration(hintText: 'Write a price...'),
                  keyboardType: TextInputType.number,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdateMentorshipInfo(
                      price: int.parse(value),
                    ));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
