import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image(
        height: 50,
        image: AssetImage('lib/assets/logo/1.0x/Oblio-Login.png'),
      ),
    );
  }
}
