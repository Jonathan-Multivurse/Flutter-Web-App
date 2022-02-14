import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/divider_model.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/stats/stats_profile_details.dart';
import 'package:oblio/widgets/home/stats/stats_ranks.dart';
import 'package:oblio/widgets/home/stats/stats_avatar.dart';
import 'package:oblio/widgets/home/stats/stats_bottom_data.dart';
import 'package:oblio/widgets/home/stats/stats_tasks.dart';

class StatsWidgets extends StatelessWidget {
  const StatsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'Your Stats'.toUpperCase()),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StatsAvatar(),
                SizedBox(width: 10),
                StatsProfileDetails(),
                Expanded(child: Container()),
              ],
            ),
          ),
          Column(
            children: [
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
                padding: const EdgeInsets.only(top: 20),
                child: StatsBottomData(),
              )
            ],
          )
        ],
      ),
    );
  }
}
