import 'package:flutter/material.dart';

import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/scheduled/scheduled_circular.dart';

class ScheduledWidets extends StatefulWidget {
  const ScheduledWidets({Key? key}) : super(key: key);

  @override
  State<ScheduledWidets> createState() => _ScheduledWidetsState();
}

class _ScheduledWidetsState extends State<ScheduledWidets> {
  String dropdownValue = "All Time";
  List list = <String>['Day', 'Week', 'Month', 'Quarter', 'Year', 'All Time'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'Scheduled Tasks'.toUpperCase()),
          SizedBox(height: 20),
          CommonSubtitle(
            subtitle: 'Sales Team'.toUpperCase(),
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
          SizedBox(height: 10),
          ScheduledCircular(),
        ],
      ),
    );
  }
}
