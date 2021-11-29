import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_chart_navigator.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_drawer.dart';

class PipelineWidets extends StatelessWidget {
  const PipelineWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'PIPELINE GOALS'),
          SizedBox(height: 15),
          CommonSubtitle(
              subtitle: 'PIPELINE GOALS',
              filterone: 'ALL TIME',
              filtertwo: Container()),
          SizedBox(height: 5),
          PipelineChartNavigator(),
          PipelineDrawer(),
        ],
      ),
    );
  }
}
