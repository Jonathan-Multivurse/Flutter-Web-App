import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/wins/wins_chips.dart';
import 'package:oblio/widgets/home/wins/wins_legend.dart';
import 'package:oblio/widgets/home/wins/wins_sub.dart';
import 'package:oblio/widgets/home/wins/wins_title.dart';


class WinsWidets extends StatelessWidget {
  const WinsWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WinsTitle(),
          SizedBox(height: 5),
          WinsSub(),
          SizedBox(height: 15),
          WinsChips(),
          WinsLegend(),
          
        ],
      ),
    );
  }
}
