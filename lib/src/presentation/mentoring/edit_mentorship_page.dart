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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
                StoreProvider.of<AppState>(context, listen: false).dispatch(
                  const GetAllMentorships(),
                );
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    hintText: 'Write a description...',
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                  initialValue: widget.currentMentorship.description,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdateMentorshipInfo(description: value),
                    );
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger description';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: 'Write a price...',
                      border: OutlineInputBorder(),
                      labelText: 'Price',
                      suffixText: '€',
                      suffixStyle: TextStyle(fontSize: 20),
                    ),
                    initialValue: widget.currentMentorship.price.toString(),
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
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'Update',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      color: Colors.teal,
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          UpdateMentorship(widget.currentMentorship.id),
                        );
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(AppRoutes.home),
                        );
                      },
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'Delete',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          DeleteMentorship(widget.currentMentorship.id),
                        );
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(AppRoutes.home),
                        );
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
