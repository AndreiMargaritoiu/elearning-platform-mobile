import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class EditMentorshipPage extends StatefulWidget {
  const EditMentorshipPage({
    this.currentMentorship,
    Key key,
  }) : super(key: key);

  final Mentorship currentMentorship;

  @override
  _EditMentorshipPageState createState() => _EditMentorshipPageState();
}

class _EditMentorshipPageState extends State<EditMentorshipPage> {

  @override
  Widget build(BuildContext context) {
    return MentorshipInfoContainer(
      builder: (BuildContext context, MentorshipInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Edit mentorship page'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'description',
                  ),
                  initialValue: widget.currentMentorship.description,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdateMentorshipInfo(description: value),);
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger description';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'description',
                  ),
                  initialValue: widget.currentMentorship.price.toString(),
                  keyboardType: TextInputType.number,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(
                        UpdateMentorshipInfo(price: int.parse(value),));
                  },
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      child: const Text('Update'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                            UpdateMentorship(widget.currentMentorship.id),);
                        Navigator.popUntil(
                            context, ModalRoute.withName(AppRoutes.home),);
                      },
                    ),
                    MaterialButton(
                      child: const Text('Delete'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                            DeleteMentorship(widget.currentMentorship.id),);
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
