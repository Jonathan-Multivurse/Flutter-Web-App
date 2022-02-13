import 'package:flutter/material.dart';
import 'package:oblio/components/text_model.dart';

class AuthenticationTitle extends StatelessWidget {
  const AuthenticationTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextModel(
        data: 'Welcome Home',
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey[800]),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
