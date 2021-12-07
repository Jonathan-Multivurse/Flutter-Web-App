import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/performers/performers_details.dart';
import 'package:oblio/widgets/home/performers/performers_divider.dart';

class PerformersWidgets extends StatefulWidget {
  const PerformersWidgets({Key? key}) : super(key: key);

  @override
  State<PerformersWidgets> createState() => _PerformersWidgetsState();
}

class _PerformersWidgetsState extends State<PerformersWidgets> {
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
          CommonTitle(title: 'Top Performers'.toUpperCase()),
          SizedBox(
            height: 20,
          ),
          CommonSubtitle(
            subtitle: 'Top Personal'.toUpperCase(),
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
          SizedBox(
            height: 20,
          ),
          PerformersDetails(
            number: '1. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar1.png',
            ),
            title: 'Sales'.toUpperCase(),
            title2: 'Senior'.toUpperCase(),
            title3: 'Gamma'.toUpperCase(),
            name: 'Scott Byler',
            numdata: '322',
          ),
          PerformersDivider(),
          PerformersDetails(
            number: '2. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar2.png',
            ),
            title: 'Hr'.toUpperCase(),
            title2: 'Senior'.toUpperCase(),
            title3: 'Gamma'.toUpperCase(),
            name: 'Halima Sterling',
            numdata: '309',
          ),
          PerformersDivider(),
          PerformersDetails(
            number: '3. ',
            image: AssetImage(
              'lib/assets/images/1.0x/avatar3.png',
            ),
            title: 'Marketing'.toUpperCase(),
            title2: 'Senior'.toUpperCase(),
            title3: 'Gamma'.toUpperCase(),
            name: 'Sara Jones',
            numdata: '286',
          ),
        ],
      ),
    );
  }
}
