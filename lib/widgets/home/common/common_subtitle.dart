import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class CommonSubtitle extends StatelessWidget {
  final String subtitle;
  final String filterone;
  final Widget filtertwo;
  const CommonSubtitle({
    Key? key,
    required this.subtitle,
    required this.filterone,
    required this.filtertwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextModel(
              data: subtitle,
              style: oblioTheme.textTheme.overline!,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            Expanded(
              child: Container(),
            ),
            TextModel(
              data: filterone,
              style: TextStyle(
                color: HexColor('#435BD9'),
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(width: 15),
            filtertwo,
          ],
        ));
  }
}
