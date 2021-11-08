import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class HomeHeaderTitle extends StatelessWidget {
  const HomeHeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 35,
          child: VerticalDivider(
              width: 35,
              color: oblioTheme.dividerTheme.color,
              thickness: oblioTheme.dividerTheme.thickness),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextModel(
              data: 'All Accounts',
              style: oblioTheme.textTheme.overline!,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
            ),
            TextModel(
              data: 'Demo User',
              style: oblioTheme.textTheme.headline4!,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      ],
    );
  }
}
