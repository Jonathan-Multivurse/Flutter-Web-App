import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/divider_model.dart';
import 'package:oblio/widgets/home/profile_details.dart';
import 'package:oblio/widgets/home/rank.dart';
import 'package:oblio/widgets/home/scheduled_arc.dart';
import 'package:oblio/widgets/home/scheduled_circular.dart';
import 'package:oblio/widgets/home/scheduled_numbers.dart';
import 'package:oblio/widgets/home/scheduled_sub.dart';
import 'package:oblio/widgets/home/scheduled_title.dart';
import 'package:oblio/widgets/home/stats_avatar.dart';
import 'package:oblio/widgets/home/stats_bottom_data.dart';
import 'package:oblio/widgets/home/stats_title.dart';
import 'package:oblio/widgets/home/tasks.dart';
import 'package:oblio/widgets/home/team_chip.dart';

class ScheduledWidets extends StatelessWidget {
  const ScheduledWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.grey[100],
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      hoverColor: Colors.grey[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScheduledTitle(),
          SizedBox(height: 10),
          ScheduledSub(),
          ScheduledNumbers(),
          ScheduledCircular()
        ],
      ),
    );
  }
}
