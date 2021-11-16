import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class AccountFooter extends StatelessWidget {
  const AccountFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){},
              child: TextModel(
                data: 'PRIVACY POLICY',
                style: oblioTheme.textTheme.overline!,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: (){},
              child: TextModel(
                data: 'TERMS OF SERVICE',
                style: oblioTheme.textTheme.overline!,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),
          ],
        ));
  }
}
