import 'package:flutter/material.dart';
import 'package:oblio/widgets/accounts/common/common_title.dart';
import 'package:oblio/widgets/accounts/contact-activity/contact_activity_expansion_list.dart';

class ContactActivityWidets extends StatefulWidget {
  const ContactActivityWidets({Key? key}) : super(key: key);

  @override
  State<ContactActivityWidets> createState() => _ContactActivityWidetsState();
}

class _ContactActivityWidetsState extends State<ContactActivityWidets> {
  String dropdownValue = "All Time";
  List list = <String>['Day', 'Week', 'Month', 'Quarter', 'Year', 'All Time'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountCommonTitle(title: 'Contact Activity'),
          SizedBox(height: 5),
          ContactActivityExpansionList()
        ],
      ),
    );
  }
}
