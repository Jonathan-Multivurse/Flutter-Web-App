import 'package:flutter/material.dart';
import 'package:oblio/routes/routes.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/primary_button_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        color: oblioTheme.canvasColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextModel(
              data: 'Welcome Home',
              style: oblioTheme.textTheme.headline2!,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 20),
            PrimaryButtonModel(
              height: 50,
              width: 150,
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.pushNamed(context, AuthenticationRoute);
              },
              name: 'SIGN OUT',
              textStyle: oblioTheme.primaryTextTheme.button!,
              style: oblioTheme.elevatedButtonTheme.style!,
            ),
          ],
        ),
      ),
    );
  }
}
