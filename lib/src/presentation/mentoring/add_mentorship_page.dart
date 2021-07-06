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
  String dropdownValue = 'School';

  @override
  Widget build(BuildContext context) {
    return MentorshipInfoContainer(
      builder: (BuildContext context, MentorshipInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add mentorship'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.check_circle_outline),
                onPressed: () {
                  if (info.description != null) {
                    StoreProvider.of<AppState>(context).dispatch(
                      const AddMentorship(),
                    );
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(AppRoutes.home),
                    );
                    StoreProvider.of<AppState>(context, listen: false).dispatch(
                      const GetMentorships(),
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
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    hintText: 'Write a description...',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    labelText: 'Description',
                  ),
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdateMentorshipInfo(description: value),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextField(
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: 'Write a price...',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                      labelText: 'Price',
                      suffixText: '€',
                      suffixStyle: TextStyle(fontSize: 20),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(
                        UpdateMentorshipInfo(
                          price: int.parse(value),
                        ),
                      );
                    },
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  items: <String>['School', 'Faculty', 'Other']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(
                      () {
                        dropdownValue = newValue;
                        StoreProvider.of<AppState>(context).dispatch(
                          UpdateMentorshipInfo(category: newValue),
                        );
                      },
                    );
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
