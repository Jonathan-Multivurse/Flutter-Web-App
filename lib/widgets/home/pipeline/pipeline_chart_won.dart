import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/widgets/home/pipeline/bottom_legend.dart';
import 'package:oblio/widgets/home/pipeline/top_legend.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PipelineChartWon extends StatelessWidget {
  const PipelineChartWon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [80, 40, 25, 60];
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(child: PipelineTopLegend()),
        Container(
          height: 350,
          child: SfCircularChart(
            series: <CircularSeries>[
              RadialBarSeries(
                radius: '150',
                innerRadius: '10',
                gap: '5',
                pointColorMapper: (data, index) {
                  if (index == 0) {
                    return HexColor('#34CA87');
                  } else if (index == 1) {
                    return HexColor('#FF8787');
                  } else if (index == 2) {
                    return HexColor('#FDB653');
                  } else if (index == 3) {
                    return HexColor('#5F78E4');
                  }
                },
                cornerStyle: CornerStyle.bothCurve,
                trackBorderWidth: 250,
                strokeWidth: 100,
                dataSource: data,
                maximumValue: 100,
                xValueMapper: (data, _) => data,
                yValueMapper: (data, _) => data,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 290),
          child: PipelineBottomLegend(),
        ),
      ],
    );
  }
}
