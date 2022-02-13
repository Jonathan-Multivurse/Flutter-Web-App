import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/authentication/card.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var height = device.height;
    var width = device.width;
    responsiveView() => width > 800 && height > 600 ? true : false;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
              visible: responsiveView(),
              child: Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          colors: [HexColor('#3f5efb'), HexColor('#fc4646')])),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                  alignment: Alignment.center,
                  color: oblioTheme.canvasColor,
                  child: AuthenticationCard())),
        ],
      )),
    );
  }
}
