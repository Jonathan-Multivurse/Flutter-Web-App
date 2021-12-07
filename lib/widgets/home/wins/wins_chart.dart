import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/wins-opp/wins_opp.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WinsData {
  WinsData(
    this.week,
    this.res,
    this.cus,
    this.sql,
    this.mql,
  );
  final String week;
  final int res;
  final int cus;
  final int sql;
  final int mql;
}

class WinsChart extends StatefulWidget {
  const WinsChart({Key? key}) : super(key: key);

  @override
  _WinsChartState createState() => _WinsChartState();
}

class _WinsChartState extends State<WinsChart> {
  late List<WinsData> _chartData;
  late List<WinsData> _chartData2;

  List<WinsData> getChartData() {
    final List<WinsData> chartData = [
      WinsData('Week4', 8, 12, 6, 14),
      WinsData('Week3', 5, 8, 10, 7),
      WinsData('Week2', 9, 13, 7, 14),
      WinsData('Week1', 10, 10, 10, 10),
    ];
    return chartData;
  }

  List<WinsData> getChartData2() {
    final List<WinsData> chartData2 = [
      WinsData('Week8', 8, 12, 6, 14),
      WinsData('Week7', 5, 8, 10, 7),
      WinsData('Week6', 9, 13, 7, 14),
      WinsData('Week5', 10, 10, 10, 10),
      WinsData('Week4', 8, 12, 6, 14),
      WinsData('Week3', 5, 8, 10, 7),
      WinsData('Week2', 9, 13, 7, 14),
      WinsData('Week1', 10, 10, 10, 10),
    ];
    return chartData2;
  }

  @override
  void initState() {
    _chartData = getChartData();
    _chartData2 = getChartData2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    responsiveWidth() {
      if (width > 1400) {
        return 350.0;
      } else if (width <= 1400 && width >= 700) {
        return 400.0;
      } else if (width < 700) {
        return 350.0;
      }
    }

    return BlocBuilder<WinsOppCubit, bool>(
      builder: (context, winsState) {
        action() => winsState == false
            ? context.read<WinsOppCubit>().show()
            : context.read<WinsOppCubit>().hide();
        title() => winsState == false ? 'Expand' : 'Collapse';
        chatData() => winsState == false ? _chartData : _chartData2;
        height() => winsState == false ? 350.0 : 650.0;
        return Container(
          height: height(),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      series: <ChartSeries>[
                        StackedBarSeries<WinsData, String>(
                          dataSource: chatData(),
                          xValueMapper: (WinsData wins, _) => wins.week,
                          yValueMapper: (WinsData wins, _) => wins.res,
                          color: HexColor('#5F78E4'),
                        ),
                        StackedBarSeries<WinsData, String>(
                          dataSource: chatData(),
                          xValueMapper: (WinsData wins, _) => wins.week,
                          yValueMapper: (WinsData wins, _) => wins.cus,
                          color: HexColor('#FDB653'),
                        ),
                        StackedBarSeries<WinsData, String>(
                            dataSource: chatData(),
                            xValueMapper: (WinsData wins, _) => wins.week,
                            yValueMapper: (WinsData wins, _) => wins.sql,
                            color: HexColor('#FF8787')),
                        StackedBarSeries<WinsData, String>(
                            dataSource: chatData(),
                            xValueMapper: (WinsData wins, _) => wins.week,
                            yValueMapper: (WinsData wins, _) => wins.mql,
                            color: HexColor('#34CA87'),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                      ]),
                ),
                Container(
                  height: 50,
                  width: responsiveWidth(),
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      action();
                    },
                    child: Center(child: Text(title())),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
