import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/scheduled_circular.dart';
import 'package:oblio/widgets/home/scheduled_sub.dart';
import 'package:oblio/widgets/home/scheduled_title.dart';

class ScheduledWidets extends StatelessWidget {
  const ScheduledWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScheduledTitle(),
          SizedBox(height: 20),
          ScheduledSub(),
           SizedBox(height: 10),
          ScheduledCircular(),
        ],
      ),
    );
  }
}
