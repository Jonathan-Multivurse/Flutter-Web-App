import 'package:flutter/material.dart';
import 'package:oblio/screens/home/home.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/header/header.dart';
import 'package:oblio/widgets/left-menu/left_menu.dart';
import 'package:oblio/widgets/right-menu/right_menu.dart';
import 'package:oblio/widgets/right-menu/right_window.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: oblioTheme.canvasColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HomeHeader(),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LeftMenu(),
            HomeScreen(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [RightMenu(), RightWindow()],
            ),
          ],
        ),
      ),
    );
  }
}
