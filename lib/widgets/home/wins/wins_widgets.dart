import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/wins/wins_chart.dart';
import 'package:oblio/widgets/home/wins/wins_chips.dart';
import 'package:oblio/widgets/home/wins/wins_legend.dart';

class WinsWidets extends StatefulWidget {
  const WinsWidets({Key? key}) : super(key: key);

  @override
  State<WinsWidets> createState() => _WinsWidetsState();
}

class _WinsWidetsState extends State<WinsWidets> {
  String dropdownValue = "All Time";
  List list = <String>['Day', 'Week', 'Month', 'Quarter', 'Year', 'All Time'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'Opportunity Wins'.toUpperCase()),
          SizedBox(height: 15),
          Container(
            child: CommonSubtitle(
              subtitle: 'Team Wins'.toUpperCase(),
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
          ),
          SizedBox(height: 15),
          WinsChips(),
          WinsLegend(),
          SizedBox(height: 17),
          WinsChart(),
        ],
      ),
    );
  }
}
