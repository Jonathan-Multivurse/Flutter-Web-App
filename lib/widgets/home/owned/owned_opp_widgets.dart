import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/owned/owned_opp_expansion_list.dart';

class OwnedOppWidets extends StatefulWidget {
  const OwnedOppWidets({Key? key}) : super(key: key);

  @override
  State<OwnedOppWidets> createState() => _OwnedOppWidetsState();
}

class _OwnedOppWidetsState extends State<OwnedOppWidets> {
  String dropdownValue = "All Time";
  List list = <String>['Day', 'Week', 'Month', 'Quarter', 'Year', 'All Time'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'Owned Opportunities'.toUpperCase()),
          SizedBox(height: 15),
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
          SizedBox(height: 5),
          OwnedOppExpansionList()
        ],
      ),
    );
  }
}
