import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_chart_navigator.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_drawer.dart';

class PipelineWidets extends StatefulWidget {
  const PipelineWidets({Key? key}) : super(key: key);

  @override
  State<PipelineWidets> createState() => _PipelineWidetsState();
}

class _PipelineWidetsState extends State<PipelineWidets> {
  String dropdownValue = "All Time";
  List list = <String>['Day', 'Week', 'Month', 'Quarter', 'Year', 'All Time'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'Pipeline Goals'.toUpperCase()),
          SizedBox(height: 15),
          CommonSubtitle(
            subtitle: 'Pipeline Goals'.toUpperCase(),
            dropdown: DropdownButton<String>(
              isDense: true,
              dropdownColor: Colors.white,
              value: dropdownValue,
              elevation: 1,
              underline: Container(color: Colors.transparent),
              style: TextStyle(color: Colors.blue[500], fontSize: 12),
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 5),
          PipelineChartNavigator(),
          PipelineDrawer(),
        ],
      ),
    );
  }
}
