import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/components/fab_button_model.dart';
import 'package:hexcolor/hexcolor.dart';

class RightMenu extends StatefulWidget {
  const RightMenu({Key? key}) : super(key: key);

  @override
  State<RightMenu> createState() => _RightMenuState();
}

class _RightMenuState extends State<RightMenu> {
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
      'tag9',
      'tag10',
    ];
    List<IconData> iconItems = [
      Icons.fitness_center,
      Icons.bathtub,
      MdiIcons.foodVariant,
      Icons.adjust,
      Icons.checkroom,
      Icons.work,
      Icons.weekend,
      MdiIcons.book,
      Icons.group,
      Icons.hotel,
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
      Colors.grey[200]!,
      Colors.grey[200]!,
    ];

    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Material(
            elevation: 0,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 75,
              padding: EdgeInsets.only(top: 10),
              child: ListView.builder(
                itemCount: iconItems.length,
                itemBuilder: (context, index) {
                  hover() {
                    if (menuState == '') {
                      return Colors.grey[200];
                    } else if (menuState == 'fitness' && index == 0) {
                      return colorItems[0];
                    } else if (menuState == 'hygiene' && index == 1) {
                      return colorItems[1];
                    } else if (menuState == 'meal' && index == 2) {
                      return colorItems[2];
                    } else if (menuState == 'spirituality' && index == 3) {
                      return colorItems[3];
                    } else if (menuState == 'clothing' && index == 4) {
                      return colorItems[4];
                    } else if (menuState == 'work' && index == 5) {
                      return colorItems[5];
                    } else if (menuState == 'chill' && index == 6) {
                      return colorItems[6];
                    } else if (menuState == 'growth' && index == 7) {
                      return colorItems[7];
                    } else if (menuState == 'social' && index == 8) {
                      return colorItems[8];
                    } else if (menuState == 'sleep' && index == 9) {
                      return colorItems[9];
                    } else {
                      return Colors.grey[100];
                    }
                  }

                  background() {
                    if (menuState == '') {
                      return Colors.white;
                    } else if (menuState == 'fitness' && index == 0) {
                      return colorItems[0];
                    } else if (menuState == 'hygiene' && index == 1) {
                      return colorItems[1];
                    } else if (menuState == 'meal' && index == 2) {
                      return colorItems[2];
                    } else if (menuState == 'spirituality' && index == 3) {
                      return colorItems[3];
                    } else if (menuState == 'clothing' && index == 4) {
                      return colorItems[4];
                    } else if (menuState == 'work' && index == 5) {
                      return colorItems[5];
                    } else if (menuState == 'chill' && index == 6) {
                      return colorItems[6];
                    } else if (menuState == 'growth' && index == 7) {
                      return colorItems[7];
                    } else if (menuState == 'social' && index == 8) {
                      return colorItems[8];
                    } else if (menuState == 'sleep' && index == 9) {
                      return colorItems[9];
                    } else {
                      return Colors.white;
                    }
                  }

                  icon() {
                    if (menuState == '') {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'fitness' && index == 0) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'hygiene' && index == 1) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'meal' && index == 2) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'spirituality' && index == 3) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'clothing' && index == 4) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'work' && index == 5) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'chill' && index == 6) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'growth' && index == 7) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'social' && index == 8) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else if (menuState == 'sleep' && index == 9) {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    } else {
                      return <Color>[HexColor('#3f5efb'), HexColor('#ad5092')];
                    }
                  }

                  state() {
                    if (index == 0) {
                      return context.read<RightMenuCubit>().fitness();
                    } else if (index == 1) {
                      return context.read<RightMenuCubit>().hygiene();
                    } else if (index == 2) {
                      return context.read<RightMenuCubit>().meal();
                    } else if (index == 3) {
                      return context.read<RightMenuCubit>().spirituality();
                    } else if (index == 4) {
                      return context.read<RightMenuCubit>().clothing();
                    } else if (index == 5) {
                      return context.read<RightMenuCubit>().work();
                    } else if (index == 6) {
                      return context.read<RightMenuCubit>().chill();
                    } else if (index == 7) {
                      return context.read<RightMenuCubit>().growth();
                    } else if (index == 8) {
                      return context.read<RightMenuCubit>().social();
                    } else if (index == 9) {
                      return context.read<RightMenuCubit>().sleep();
                    }
                  }

                  return Container(
                      padding: EdgeInsets.all(11),
                      child: FabButtonModel(
                        tag: tagItems[index],
                        hover: hover()!,
                        elevation: 0.5,
                        hoverElevation: 0.0,
                        mini: true,
                        background: background(),
                        child: AdvancedIcon(
                          icon: iconItems[index],
                          color: Colors.indigo,
                          size: 25,
                          gradient: LinearGradient(
                            stops: [0.0, 1.0],
                            colors: icon(),
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        onPressed: () {
                          context.read<RightWindowCubit>().show();
                          state();
                        },
                      ));
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
