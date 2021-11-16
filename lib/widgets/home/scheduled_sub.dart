import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class ScheduledSub extends StatelessWidget {
  const ScheduledSub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextModel(
              data: 'SALES TEAM',
              style: oblioTheme.textTheme.overline!,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            Expanded(child: Container(),),
            TextModel(
              data: 'THIS MONTH',
              style: TextStyle(
                color: HexColor('#435BD9'),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(width: 15),
            TextModel(
              data: 'ALL TIME',
              style: TextStyle(
                color: HexColor('#435BD9'),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
          ],
        ));
  }
}
