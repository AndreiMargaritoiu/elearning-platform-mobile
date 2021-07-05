import 'dart:math';
import 'dart:ui';

import 'package:intl/intl.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

const double minHeight = 120;
const double iconStartSize = 44;
const double iconEndSize = 120;
const double iconStartMarginTop = 36;
const double iconEndMarginTop = 80;
const double iconsVerticalSpacing = 24;
const double iconsHorizontalSpacing = 16;

class WorkshopsBottomList extends StatefulWidget {
  @override
  _WorkshopsBottomListState createState() => _WorkshopsBottomListState();
}

class _WorkshopsBottomListState extends State<WorkshopsBottomList> {
  double initialPercentage = 0.2;

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetAllWorkshops(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser appUser) {
      return WorkshopsContainer(
        builder: (BuildContext context, List<Workshop> workshops) {
          return Positioned.fill(
            child: DraggableScrollableSheet(
              minChildSize: initialPercentage,
              initialChildSize: initialPercentage,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return AnimatedBuilder(
                  animation: scrollController,
                  builder: (BuildContext context, Widget child) {
                    double percentage = initialPercentage;
                    if (scrollController.hasClients) {
                      percentage =
                          (scrollController.position.viewportDimension) /
                              (MediaQuery.of(context).size.height * 0.925);
                    }
                    final double scaledPercentage =
                        (percentage - initialPercentage) /
                            (1 - initialPercentage);
                    return Container(
                      padding: const EdgeInsets.only(left: 32),
                      decoration: const BoxDecoration(
                        color: Color(0xFF162A49),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(32)),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Opacity(
                            opacity: percentage > 0.99 ? 1 : 0,
                            child: ListView.builder(
                              padding:
                                  const EdgeInsets.only(right: 32, top: 128),
                              controller: scrollController,
                              itemCount: workshops.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Workshop workshop = workshops[index];
                                return MyEventItem(
                                  workshop: workshop,
                                  appUser: appUser,
                                  percentageCompleted: percentage,
                                  globalContext: context,
                                );
                              },
                            ),
                          ),
                          ...workshops.map((Workshop workshop) {
                            final int index = workshops.indexOf(workshop);
                            const int heightPerElement = 120 + 8 + 8;
                            final double widthPerElement =
                                40 + percentage * 80 + 8 * (1 - percentage);
                            final double leftOffset = widthPerElement *
                                (index > 4 ? index + 2 : index) *
                                (1 - scaledPercentage);
                            return Positioned(
                              top: 44.0 +
                                  scaledPercentage * (128 - 44) +
                                  index * heightPerElement * scaledPercentage,
                              left: leftOffset,
                              right: 32 - leftOffset,
                              child: IgnorePointer(
                                ignoring: true,
                                child: Opacity(
                                  opacity: percentage > 0.99 ? 0 : 1,
                                  child: MyEventItem(
                                    workshop: workshop,
                                    appUser: appUser,
                                    percentageCompleted: percentage,
                                    globalContext: context,
                                  ),
                                ),
                              ),
                            );
                          }),
                          SheetHeader(
                            fontSize: 16 + percentage * 8,
                            topMargin: 16 +
                                percentage * MediaQuery.of(context).padding.top,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      );
    });
  }
}

class MyEventItem extends StatelessWidget {
  const MyEventItem(
      {Key key,
      this.workshop,
      this.percentageCompleted,
      this.appUser,
      this.globalContext})
      : super(key: key);

  final Workshop workshop;
  final double percentageCompleted;
  final AppUser appUser;
  final BuildContext globalContext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Transform.scale(
        alignment: Alignment.topLeft,
        scale: 1 / 3 + 2 / 3 * percentageCompleted,
        child: SizedBox(
          height: 150,
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: const Radius.circular(16),
                  right: Radius.circular(16 * (1 - percentageCompleted)),
                ),
                child: Image.network(
                  workshop.thumbnailUrl,
                  width: 120,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Opacity(
                  opacity: max(0, percentageCompleted * 2 - 1),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(16)),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: _buildContent(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    final bool isRegistered = workshop.participants.contains(appUser.email);
    final bool isRegistrationAvailable =
        workshop.capacity != null && workshop.capacity != 0
            ? workshop.participants.length < workshop.capacity ||
                workshop.participants.contains(appUser.email)
            : true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          workshop.description,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(
          '#${workshop.tag}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
        Container(height: 4),
        Row(
          children: <Widget>[
            Icon(Icons.access_time_rounded,
                color: Colors.grey.shade400, size: 16),
            Text(
              DateFormat.yMMMMd()
                  .format(DateTime.fromMillisecondsSinceEpoch(workshop.date)),
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey,
              ),
            )
          ],
        ),
        Container(height: 4),
        Row(
          children: <Widget>[
            Icon(Icons.place, color: Colors.grey.shade400, size: 16),
            Text(
              workshop.location.isNotEmpty ? workshop.location : 'Google Meet',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
            )
          ],
        ),
        const Spacer(),
        if (isRegistrationAvailable)
          Container(
            width: 200,
            height: 24,
            color: isRegistered ? Colors.black : Colors.red,
            child: FlatButton(
              child: Text(
                isRegistered ? 'UNREGISTER' : 'REGISTER',
                style: const TextStyle(color: Colors.white),
              ),
              onPressed: () {
                StoreProvider.of<AppState>(globalContext).dispatch(
                  RegisterToWorkshop(workshop.id),
                );
              },
            ),
          )
        else
          const Text(
            'The event is full',
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
      ],
    );
  }
}

class SheetHeader extends StatelessWidget {
  const SheetHeader(
      {Key key, @required this.fontSize, @required this.topMargin})
      : super(key: key);

  final double fontSize;
  final double topMargin;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 32,
      child: IgnorePointer(
        child: Container(
          padding: EdgeInsets.only(top: topMargin, bottom: 12),
          decoration: const BoxDecoration(
            color: Color(0xFF162A49),
          ),
          child: Text(
            'Workshops',
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
