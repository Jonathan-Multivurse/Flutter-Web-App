import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/divider_model.dart';
import 'package:oblio/widgets/home/performers_details.dart';
import 'package:oblio/widgets/home/performers_divider.dart';
import 'package:oblio/widgets/home/performers_sub.dart';
import 'package:oblio/widgets/home/performers_title.dart';
import 'package:oblio/widgets/home/profile_details.dart';
import 'package:oblio/widgets/home/rank.dart';
import 'package:oblio/widgets/home/stats_avatar.dart';
import 'package:oblio/widgets/home/stats_bottom_data.dart';
import 'package:oblio/widgets/home/tasks.dart';
import 'package:oblio/widgets/home/team_chip.dart';

class PerformersWidgets extends StatelessWidget {
  const PerformersWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PerformanceTitle(),
        PerformersSub(),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          hoverColor: Colors.grey[50],
          child: PerformersDetails(
            number: '1. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar1.png',
            ),
            title: 'SALES . SENIOR . GAMMA',
            name: 'Scott Byler',
            numdata: '322',
          ),
        ),
        PerformersDivider(),
        InkWell(
          onTap: () {},
          hoverColor: Colors.grey[50],
          child: PerformersDetails(
            number: '2. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar2.png',
            ),
            title: 'HR . SENIOR . GAMMA',
            name: 'Halima Sterling',
            numdata: '309',
          ),
        ),
        PerformersDivider(),
        InkWell(
          onTap: () {},
          hoverColor: Colors.grey[50],
          child: PerformersDetails(
            number: '3. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar3.png',
            ),
            title: 'Marketing . SENIOR . GAMMA',
            name: 'Sara Jones',
            numdata: '286',
          ),
        ),
      ],
    );
  }
}
