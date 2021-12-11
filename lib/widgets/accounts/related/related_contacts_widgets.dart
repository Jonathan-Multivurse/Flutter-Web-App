import 'package:flutter/material.dart';
import 'package:oblio/widgets/accounts/common/common_subtitle.dart';
import 'package:oblio/widgets/accounts/common/common_title.dart';
import 'package:oblio/widgets/accounts/related/related_account_expansion_list.dart';

class RelatedContactsWidets extends StatefulWidget {
  const RelatedContactsWidets({Key? key}) : super(key: key);

  @override
  State<RelatedContactsWidets> createState() => _RelatedContactsWidetsState();
}

class _RelatedContactsWidetsState extends State<RelatedContactsWidets> {
  String dropdownValue = "All Time";
  List list = <String>['Day', 'Week', 'Month', 'Quarter', 'Year', 'All Time'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountCommonTitle(title: 'Related Contacts'),
          SizedBox(height: 5),
          RelatedAccountExpansionList()
        ],
      ),
    );
  }
}
