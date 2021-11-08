import 'package:flutter/material.dart';
import 'package:oblio/widgets/home/avatar.dart';
import 'package:oblio/widgets/home/logo.dart';
import 'package:oblio/widgets/home/title.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 60,
      leadingWidth: 200,
      leading: HomeLogo(),
      title: HomeHeaderTitle(),
      centerTitle: false,
      elevation: 1,
      actions: [HomeAvatar()],
    );
  }
}
