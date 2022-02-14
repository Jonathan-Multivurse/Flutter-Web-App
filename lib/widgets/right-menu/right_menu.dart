import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/fab_button_model.dart';
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
      'tag8',
    ];
    List<IconData> iconItems = [
      Icons.date_range,
      Icons.add_task,
      Icons.perm_media,
      Icons.person_add,
      Icons.add_shopping_cart,
      Icons.email,
      Icons.phone,
      Icons.bolt,
    ];
    List<Color> colorItems = [
      Colors.grey[200]!,
      Colors.grey[200]!,
      Colors.grey[200]!,
      Colors.grey[200]!,
      Colors.grey[200]!,
      Colors.grey[200]!,
      Colors.grey[200]!,
      Colors.grey[200]!,
    ];

    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return Material(
          elevation: 0,
          color: Colors.white,
          child: Container(
            width: 75,
            padding: EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: iconItems.length,
              itemBuilder: (context, index) {
                hover() {
                  if (menuState == '') {
                    return Colors.grey[200];
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
                  } else if (menuState == 'bolt' && index == 7) {
                    return colorItems[7];
                  } else {
                    return Colors.grey[100];
                  }
                }

                return Container(
                    padding: EdgeInsets.all(9),
                    child: FabButtonModel(
                      tag: tagItems[index],
                      hover: hover()!,
                      elevation: 0.5,
                      hoverElevation: 0.0,
                      mini: true,
                      background: menuState == ''
                          ? Colors.white
                          : menuState == 'calendar' && index == 0
                              ? colorItems[0]
                              : menuState == 'task' && index == 1
                                  ? colorItems[1]
                                  : menuState == 'image' && index == 2
                                      ? colorItems[2]
                                      : menuState == 'account' && index == 3
                                          ? colorItems[3]
                                          : menuState == 'cart' && index == 4
                                              ? colorItems[4]
                                              : menuState == 'email' &&
                                                      index == 5
                                                  ? colorItems[5]
                                                  : menuState == 'phone' &&
                                                          index == 6
                                                      ? colorItems[6]
                                                      : menuState == 'bolt' &&
                                                              index == 7
                                                          ? colorItems[7]
                                                          : Colors.white,
                      child: AdvancedIcon(
                        icon: iconItems[index],
                        color: Colors.indigo,
                        gradient: LinearGradient(
                          stops: [0.0, 1.0],
                          colors: menuState == ''
                              ? <Color>[
                                  HexColor('#3f5efb'),
                                  HexColor('#ad5092')
                                ]
                              : menuState == 'calendar' && index == 0
                                  ? <Color>[
                                      HexColor('#3f5efb'),
                                      HexColor('#ad5092')
                                    ]
                                  : menuState == 'task' && index == 1
                                      ? <Color>[
                                          HexColor('#3f5efb'),
                                          HexColor('#ad5092')
                                        ]
                                      : menuState == 'image' && index == 2
                                          ? <Color>[
                                              HexColor('#3f5efb'),
                                              HexColor('#ad5092')
                                            ]
                                          : menuState == 'account' && index == 3
                                              ? <Color>[
                                                  HexColor('#3f5efb'),
                                                  HexColor('#ad5092')
                                                ]
                                              : menuState == 'cart' &&
                                                      index == 4
                                                  ? <Color>[
                                                      HexColor('#3f5efb'),
                                                      HexColor('#ad5092')
                                                    ]
                                                  : menuState == 'email' &&
                                                          index == 5
                                                      ? <Color>[
                                                          HexColor('#3f5efb'),
                                                          HexColor('#ad5092')
                                                        ]
                                                      : menuState == 'phone' &&
                                                              index == 6
                                                          ? <Color>[
                                                              HexColor(
                                                                  '#3f5efb'),
                                                              HexColor(
                                                                  '#ad5092')
                                                            ]
                                                          : menuState ==
                                                                      'bolt' &&
                                                                  index == 7
                                                              ? <Color>[
                                                                  HexColor(
                                                                      '#3f5efb'),
                                                                  HexColor(
                                                                      '#ad5092')
                                                                ]
                                                              : <Color>[
                                                                  HexColor(
                                                                      '#3f5efb'),
                                                                  HexColor(
                                                                      '#ad5092')
                                                                ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
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
                                                : index == 6
                                                    ? context
                                                        .read<RightMenuCubit>()
                                                        .phone()
                                                    : context
                                                        .read<RightMenuCubit>()
                                                        .bolt();
                      },
                    ));
              },
            ),
          ),
        );
      },
    );
  }
}
