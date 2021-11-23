import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/long-card.dart';
import 'package:oblio/widgets/home/performers_widgets.dart';
import 'package:oblio/widgets/home/scheduled_widgets.dart';
import 'package:oblio/widgets/home/short-card.dart';
import 'package:oblio/widgets/home/stats_widgets.dart';

class WrapView extends StatelessWidget {
  const WrapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      textDirection: TextDirection.ltr,
      runSpacing: 20,
      spacing: 20,
      children: [
        ShortCard(child: Container(child: StatsWidgets())),
        ShortCard(
            child: Container(
          child: PerformersWidgets(),
        )),
        ShortCard(
            child: Container(
          child: ScheduledWidets(),
        )),
        LongCard(child: Container()),
        LongCard(child: Container()),
        LongCard(child: Container()),
      ],
    );
  }
}
