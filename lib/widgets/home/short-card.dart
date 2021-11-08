import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/card_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class ShortCard extends StatelessWidget {
  const ShortCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 300,
        width: 300,
        alignment: Alignment.center,
        child: TextModel(
          data: 'Test',
          style: oblioTheme.textTheme.bodyText1!,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
