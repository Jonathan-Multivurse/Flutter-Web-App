import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ScheduledArc extends StatelessWidget {
  const ScheduledArc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        height: 170,
        child: SfRadialGauge(axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: [
            GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
            GaugeRange(startValue: 50, endValue: 100, color: Colors.orange),
            GaugeRange(startValue: 100, endValue: 150, color: Colors.red)
          ], pointers: [
            NeedlePointer(value: 90)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('90.0',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}
