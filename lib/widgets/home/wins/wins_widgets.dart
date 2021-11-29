import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/wins/wins_chart.dart';
import 'package:oblio/widgets/home/wins/wins_chips.dart';
import 'package:oblio/widgets/home/wins/wins_legend.dart';

class WinsWidets extends StatelessWidget {
  const WinsWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'OPPORTUNITY WINS'),
          SizedBox(height: 15),
          CommonSubtitle(
              subtitle: 'TEAM WINS',
              filterone: 'MONTHLY',
              filtertwo: Container()),
          SizedBox(height: 15),
          WinsChips(),
          WinsLegend(),
          SizedBox(height: 17),
          WinsChart(),
        ],
      ),
    );
  }
}
