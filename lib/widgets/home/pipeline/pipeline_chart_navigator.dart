import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_chart_open.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_chart_won.dart';

class PipelineChartNavigator extends StatefulWidget {
  const PipelineChartNavigator({Key? key}) : super(key: key);

  @override
  State<PipelineChartNavigator> createState() => _PipelineChartNavigatorState();
}

class _PipelineChartNavigatorState extends State<PipelineChartNavigator>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 360,
              child: TabBarView(
                controller: _tabController,
                children: const <Widget>[
                  Center(child: PipelineChartOpen()),
                  Center(child: PipelineChartWon()),
                ],
              ),
            ),
            Container(
              height: 40,
              child: TabBar(
                controller: _tabController,
                tabs: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('OPEN'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('WON'),
                  ),
                ],
                indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(color: HexColor('#435BD9'), width: 2.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: TextModel(
                      data: 'EXPAND',
                      style: oblioTheme.textTheme.subtitle2!,
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
