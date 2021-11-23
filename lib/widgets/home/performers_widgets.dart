import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/performers_details.dart';
import 'package:oblio/widgets/home/performers_divider.dart';
import 'package:oblio/widgets/home/performers_sub.dart';
import 'package:oblio/widgets/home/performers_title.dart';

class PerformersWidgets extends StatelessWidget {
  const PerformersWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PerformanceTitle(),
          PerformersSub(),
          SizedBox(
            height: 20,
          ),
          PerformersDetails(
            number: '1. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar1.png',
            ),
            title: 'SALES . SENIOR . GAMMA',
            name: 'Scott Byler',
            numdata: '322',
          ),
          PerformersDivider(),
          PerformersDetails(
            number: '2. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar2.png',
            ),
            title: 'HR . SENIOR . GAMMA',
            name: 'Halima Sterling',
            numdata: '309',
          ),
          PerformersDivider(),
          PerformersDetails(
            number: '3. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar3.png',
            ),
            title: 'Marketing . SENIOR . GAMMA',
            name: 'Sara Jones',
            numdata: '286',
          ),
        ],
      ),
    );
  }
}
