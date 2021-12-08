import 'package:flutter/material.dart';
import 'package:oblio/widget-models/text_model.dart';

class AccountCommonTitle extends StatelessWidget {
  final String title;
  final TextStyle style;
  const AccountCommonTitle({Key? key, required this.title, required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 15),
      child: TextModel(
        data: title.toUpperCase(),
        style: style,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
