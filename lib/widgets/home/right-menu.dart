import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/hover/hover_cubit.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/fab_button_model.dart';
import 'package:hexcolor/hexcolor.dart';

class RightMenu extends StatefulWidget {
  const RightMenu({Key? key}) : super(key: key);

  @override
  State<RightMenu> createState() => _RightMenuState();
}

class _RightMenuState extends State<RightMenu> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    List<String> tagItems = [
      'tag1',
      'tag2',
      'tag3',
      'tag4',
      'tag5',
      'tag6',
      'tag7',
    ];
    List<IconData> iconItems = [
      Icons.date_range,
      Icons.add_task,
      Icons.perm_media,
      Icons.person_add,
      Icons.add_shopping_cart,
      Icons.email,
      Icons.phone,
    ];
    List<HexColor> hoverItems = [
      HexColor('#435BD9'),
      HexColor('#FA4583'),
      HexColor('#5F78E4'),
      HexColor('#FDC173'),
      HexColor('#0EBB6A'),
      HexColor('#711BEF'),
      HexColor('#FDAF4C'),
    ];
    List<HexColor> colorItems = [
      HexColor('#435BD9'),
      HexColor('#FA4583'),
      HexColor('#5F78E4'),
      HexColor('#FDC173'),
      HexColor('#0EBB6A'),
      HexColor('#711BEF'),
      HexColor('#FDAF4C'),
    ];

    hover(index) {
      context.read<RightMenuHoverCubit>().hover();
      return hoverItems[index];
    }

    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return BlocBuilder<RightMenuHoverCubit, bool>(
          builder: (context, hoverState) {
            return Material(
              elevation: 4,
              color: Colors.white,
              child: Container(
                width: 75,
                padding: EdgeInsets.only(top: 20),
                child: ListView.builder(
                  itemCount: iconItems.length,
                  itemBuilder: (context, index) {
                    hover() {
                      if (menuState == '') {
                        return Colors.grey[100];
                      } else if (menuState == 'calendar' && index == 0) {
                        return colorItems[0];
                      } else if (menuState == 'task' && index == 1) {
                        return colorItems[1];
                      } else if (menuState == 'image' && index == 2) {
                        return colorItems[2];
                      } else if (menuState == 'account' && index == 3) {
                        return colorItems[3];
                      } else if (menuState == 'cart' && index == 4) {
                        return colorItems[4];
                      } else if (menuState == 'email' && index == 5) {
                        return colorItems[5];
                      } else if (menuState == 'phone' && index == 6) {
                        return colorItems[6];
                      } else {
                        return Colors.grey[100];
                      }
                    }

                    elevation() {
                      if (menuState == '') {
                        return 3.0;
                      } else if (menuState == 'calendar' && index == 0) {
                        return 0.0;
                      } else if (menuState == 'task' && index == 1) {
                        return 0.0;
                      } else if (menuState == 'image' && index == 2) {
                        return 0.0;
                      } else if (menuState == 'account' && index == 3) {
                        return 0.0;
                      } else if (menuState == 'cart' && index == 4) {
                        return 0.0;
                      } else if (menuState == 'email' && index == 5) {
                        return 0.0;
                      } else if (menuState == 'phone' && index == 6) {
                        return 0.0;
                      } else {
                        return 3.0;
                      }
                    }

                    return Container(
                        padding: EdgeInsets.all(10),
                        child: FabButtonModel(
                          tag: tagItems[index],
                          hover: hover()!,
                          elevation: elevation(),
                          hoverElevation: 0.0,
                          mini: true,
                          background: menuState == ''
                              ? oblioTheme.backgroundColor
                              : menuState == 'calendar' && index == 0
                                  ? colorItems[0]
                                  : menuState == 'task' && index == 1
                                      ? colorItems[1]
                                      : menuState == 'image' && index == 2
                                          ? colorItems[2]
                                          : menuState == 'account' && index == 3
                                              ? colorItems[3]
                                              : menuState == 'cart' &&
                                                      index == 4
                                                  ? colorItems[4]
                                                  : menuState == 'email' &&
                                                          index == 5
                                                      ? colorItems[5]
                                                      : menuState == 'phone' &&
                                                              index == 6
                                                          ? colorItems[6]
                                                          : oblioTheme
                                                              .backgroundColor,
                          child: Icon(iconItems[index],
                              color: menuState == ''
                                  ? colorItems[index]
                                  : menuState == 'calendar' && index == 0
                                      ? Colors.white
                                      : menuState == 'task' && index == 1
                                          ? Colors.white
                                          : menuState == 'image' && index == 2
                                              ? Colors.white
                                              : menuState == 'account' &&
                                                      index == 3
                                                  ? Colors.white
                                                  : menuState == 'cart' &&
                                                          index == 4
                                                      ? Colors.white
                                                      : menuState == 'email' &&
                                                              index == 5
                                                          ? Colors.white
                                                          : menuState ==
                                                                      'phone' &&
                                                                  index == 6
                                                              ? Colors.white
                                                              : hoverState ==
                                                                          true &&
                                                                      index == 0
                                                                  ? Colors.white
                                                                  : colorItems[
                                                                      index]),
                          onPressed: () {
                            context.read<RightWindowCubit>().show();
                            index == 0
                                ? context.read<RightMenuCubit>().calendar()
                                : index == 1
                                    ? context.read<RightMenuCubit>().task()
                                    : index == 2
                                        ? context.read<RightMenuCubit>().image()
                                        : index == 3
                                            ? context
                                                .read<RightMenuCubit>()
                                                .account()
                                            : index == 4
                                                ? context
                                                    .read<RightMenuCubit>()
                                                    .cart()
                                                : index == 5
                                                    ? context
                                                        .read<RightMenuCubit>()
                                                        .email()
                                                    : context
                                                        .read<RightMenuCubit>()
                                                        .phone();
                          },
                        ));
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
