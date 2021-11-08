import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/fab_button_model.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({Key? key}) : super(key: key);

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
    List<Color> colorItems = [
      Colors.indigoAccent,
      Colors.pink[400]!,
      Colors.blue[500]!,
      Colors.yellow[600]!,
      Colors.green[400]!,
      Colors.deepPurple[600]!,
      Colors.orange[400]!
    ];
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return Material(
          elevation: 2,
          color: Colors.white,
          child: Container(
            width: 75,
            padding: EdgeInsets.only(top: 40),
            child: ListView.builder(
              itemCount: iconItems.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.all(15),
                    child: FabButtonModel(
                      tag: tagItems[index],
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
                                          : menuState == 'cart' && index == 4
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
                                          : menuState == 'account' && index == 3
                                              ? Colors.white
                                              : menuState == 'cart' &&
                                                      index == 4
                                                  ? Colors.white
                                                  : menuState == 'email' &&
                                                          index == 5
                                                      ? Colors.white
                                                      : menuState == 'phone' &&
                                                              index == 6
                                                          ? Colors.white
                                                          : colorItems[index]),
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
  }
}
