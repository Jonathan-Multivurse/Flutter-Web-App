import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    height() => width < 500 ? 35.0 : 50.0;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image(
        height: height(),
        image: AssetImage('lib/assets/logo/1.0x/Oblio-Login.png'),
      ),
    );
  }
}
