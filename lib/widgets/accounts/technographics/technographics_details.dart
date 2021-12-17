import 'package:flutter/material.dart';
import 'package:oblio/widget-models/details_tile.dart';

class TechnographicsDetails extends StatelessWidget {
  const TechnographicsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DetailsTile(
              icon: Container(),
              title: 'Confirmed Technologies'.toUpperCase(),
              content: 'Sales force, Adobe CC, AWS'),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Divider(
              thickness: 1,
              color: Colors.grey[500],
            ),
          ),
          DetailsTile(
            icon: Container(),
            title: 'Technographic Profile'.toUpperCase(),
            content: 'Sales force, Adobe CC, AWS',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Divider(
              thickness: 1,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
