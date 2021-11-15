import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/divider_model.dart';
import 'package:oblio/widgets/home/profile_details.dart';
import 'package:oblio/widgets/home/rank.dart';
import 'package:oblio/widgets/home/stats_avatar.dart';
import 'package:oblio/widgets/home/stats_bottom_data.dart';
import 'package:oblio/widgets/home/stats_title.dart';
import 'package:oblio/widgets/home/tasks.dart';
import 'package:oblio/widgets/home/team_chip.dart';

class StatsWidgets extends StatelessWidget {
  const StatsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StatsTitle(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [StatsAvatar(), StatsProfileDetails(), StatsTeamChip()],
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [RankWidgets(), TaskWidgets()],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: DividerModel(
            height: 0,
            thickness: 1,
            color: oblioTheme.dividerTheme.color!,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: StatsBottomData(),
        )
      ],
    );
  }
}
