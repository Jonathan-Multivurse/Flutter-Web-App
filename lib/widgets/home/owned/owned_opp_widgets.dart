import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/owned/owned_opp_expansion_list.dart';
import 'package:oblio/widgets/home/owned/owned_opp_sub.dart';
import 'package:oblio/widgets/home/owned/owned_opp_title.dart';

class OwnedOppWidets extends StatelessWidget {
  const OwnedOppWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OwnedOppTitle(),
          SizedBox(height: 5),
          OwnedOppSub(),
          SizedBox(height: 5),
          OwnedOppExpansionList()
        ],
      ),
    );
  }
}
