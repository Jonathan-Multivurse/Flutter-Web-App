import 'package:flutter/material.dart';
import 'package:oblio/widgets/accounts/attribution/contact_attribution_expansion_list.dart';
import 'package:oblio/widgets/accounts/common/common_title.dart';

class ContactAttributionWidgets extends StatefulWidget {
  const ContactAttributionWidgets({Key? key}) : super(key: key);

  @override
  State<ContactAttributionWidgets> createState() =>
      _ContactAttributionWidgetsState();
}

class _ContactAttributionWidgetsState extends State<ContactAttributionWidgets> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountCommonTitle(title: 'Contact Attribution'),
          SizedBox(height: 5),
          ContactAttributionExpansionList()
        ],
      ),
    );
  }
}
