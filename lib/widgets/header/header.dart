import 'package:flutter/material.dart';
import 'package:oblio/widgets/header/header_avatar.dart';
import 'package:oblio/widgets/left-menu/collapsed_left_menu.dart';
import 'package:oblio/widgets/header/header_logo.dart';
import 'package:oblio/widgets/header/header_publish_button.dart';
import 'package:oblio/widgets/header/search.dart';
import 'package:oblio/widgets/header/header_title.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    menuVisibility() => width < 900 ? true : false;
    logoVisibility() => width > 900 ? true : false;
    titleVisibility() => width > 1350 ? true : false;
    buttonVisibility() => width > 750 ? true : false;
    leading() => width < 500 ? 250.0 : 200.0;
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 60,
      leadingWidth: leading(),
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Visibility(
            visible: menuVisibility(),
            child: InkWell(
              onTap: () {},
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: InkResponse(
                onTap: () {
                  showDialog(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                            padding: EdgeInsets.only(top: 60, right: 15),
                            alignment: Alignment.topLeft,
                            child: CollapsedLeftMenu());
                      });
                },
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Icon(
                  Icons.menu,
                  color: Colors.grey[700],
                  size: 30,
                ),
              ),
            ),
          ),
          Visibility(
            visible: logoVisibility(),
            child: HomeLogo(),
          ),
        ],
      ),
      title: Visibility(
        visible: titleVisibility(),
        child: HomeHeaderTitle(),
      ),
      centerTitle: false,
      elevation: 4,
      actions: [
        SearchInput(
          obscure: false,
          label: 'search',
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[600],
          ),
        ),
        Visibility(
          visible: buttonVisibility(),
          child: PublishButton(onPressed: () {}),
        ),
        HeaderAvatar(),
      ],
    );
  }
}
