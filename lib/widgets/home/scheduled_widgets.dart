import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/scheduled_circular.dart';
import 'package:oblio/widgets/home/scheduled_sub.dart';
import 'package:oblio/widgets/home/scheduled_title.dart';

class ScheduledWidets extends StatelessWidget {
  const ScheduledWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScheduledTitle(),
        SizedBox(height: 10),
        ScheduledSub(),
        ScheduledCircular()
      ],
    );
  }
}
