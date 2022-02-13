import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/text_model.dart';

class AccountFooter extends StatelessWidget {
  const AccountFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: TextModel(
                data: 'Privacy Policy'.toUpperCase(),
                style: oblioTheme.textTheme.caption!,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: TextModel(
                data: 'Terms of Service'.toUpperCase(),
                style: oblioTheme.textTheme.caption!,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),
          ],
        ));
  }
}
