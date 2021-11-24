import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_chart_navigator.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_drawer.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_sub.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_title.dart';


class PipelineWidets extends StatelessWidget {
  const PipelineWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PipelineTitle(),
          SizedBox(height: 5),
          PipelineSub(),
          SizedBox(height: 5),
          PipelineChartNavigator(),
          PipelineDrawer(),
        ],
      ),
    );
  }
}
