import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/pipeline-drawer/pipeline_drawer.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/percentage_expansion_tile.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PipelineExpansion extends StatelessWidget {
  final double percentNum;
  final String percentText;
  final HexColor color;
  final String title;
  final String subtitle;
  final List<Widget> children;
  const PipelineExpansion(
      {Key? key,
      required this.percentNum,
      required this.percentText,
      required this.color,
      required this.title,
      required this.subtitle,
      required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PipelineDrawerCubit, bool>(
      builder: (context, drawerState) {
        visibility() => drawerState == false ? false : true;
        return Visibility(
          visible: visibility(),
          child: PercentageExpansionTileModel(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 6.0,
                    animation: true,
                    percent: percentNum,
                    center: Text(
                      percentText + "%",
                      // style: oblioTheme.textTheme.subtitle2,
                    ),
                    backgroundColor: Colors.grey[200]!,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: color),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: oblioTheme.textTheme.subtitle2),
                    Text(subtitle, style: oblioTheme.textTheme.overline),
                  ],
                ),
              ],
            ),
            children: children,
          ),
        );
      },
    );
  }
}
