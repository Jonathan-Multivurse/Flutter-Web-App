import 'package:flutter/material.dart';
import 'package:oblio/components/text_model.dart';

class ForgotPassword extends StatelessWidget {
  final Function() onTap;
  const ForgotPassword({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashFactory: NoSplash.splashFactory,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: TextModel(
          data: 'Forgot password',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w400
          ),
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr),
    );
  }
}
