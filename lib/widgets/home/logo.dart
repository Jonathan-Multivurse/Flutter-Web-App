import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    height() => width < 500 ? 35.0 : 40.0;
    return Container(
      alignment: Alignment.centerLeft,
      width: 150,
      padding: const EdgeInsets.only(left: 20),
      child: Image(
        height: height(),
        image: AssetImage('lib/assets/logo/1.0x/Oblio-Login.png'),
      ),
    );
  }
}
