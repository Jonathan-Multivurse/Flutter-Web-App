import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AuthenticationLogo extends StatelessWidget {
  const AuthenticationLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 0),
      child: GradientText('Caves',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.grey[800]),
          colors: [HexColor('#3f5efb'), HexColor('#fc4646')]),
    );
  }
}
