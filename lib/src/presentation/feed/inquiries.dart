import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key key, this.inquiries}) : super(key: key);

  final List<Inquiry> inquiries;

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, true);
            StoreProvider.of<AppState>(context, listen: false).dispatch(
              const GetUserInquiries(),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 2),
        child: ListView.builder(
          itemCount: widget.inquiries.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            final Inquiry inquiry = widget.inquiries[index];

            return Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 2),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      '${inquiry.inquirerEmail} wants to know more details about your mentorship offer(s)',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  if (index != widget.inquiries.length - 1)
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
