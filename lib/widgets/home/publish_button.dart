import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/primary_button_model.dart';

class PublishButton extends StatelessWidget {
  final void Function()? onPressed;
  const PublishButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryButtonModel(
      height: 40,
      width: 200,
      padding: EdgeInsets.all(10),
      name: 'Review & Publish',
      textStyle: oblioTheme.primaryTextTheme.button!,
      style: oblioTheme.outlinedButtonTheme.style!,
      onPressed: onPressed,
    );
  }
}
