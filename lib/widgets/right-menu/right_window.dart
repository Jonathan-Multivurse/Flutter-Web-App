import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/text_model.dart';

class RightWindow extends StatelessWidget {
  const RightWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        title() {
          if (menuState == 'fitness') {
            return 'Fitness';
          } else if (menuState == 'hygiene') {
            return 'Hygiene';
          } else if (menuState == 'meal') {
            return 'Meal';
          } else if (menuState == 'spirituality') {
            return 'Spirituality';
          } else if (menuState == 'clothing') {
            return 'Clothing';
          } else if (menuState == 'work') {
            return 'Work';
          } else if (menuState == 'chill') {
            return 'Chill';
          } else if (menuState == 'growth') {
            return 'Growth';
          } else if (menuState == 'social') {
            return 'Social';
          } else if (menuState == 'sleep') {
            return 'Sleep';
          }
        }

        return BlocBuilder<RightWindowCubit, bool>(
          builder: (context, windowState) {
            return Visibility(
              visible: windowState,
              child: Container(
                width: 400,
                color: Colors.grey[100],
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 0.5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 65,
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  title().toString(),
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[800]),
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    context.read<RightWindowCubit>().hide();
                                    context.read<RightMenuCubit>().none();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: AdvancedIcon(
                                      icon: Icons.close,
                                      opacity: 1,
                                      color: Colors.amber,
                                      gradient: LinearGradient(
                                        stops: [0.0, 1.0],
                                        colors: [
                                          HexColor('#3f5efb'),
                                          HexColor('#ad5092')
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 300),
                    Flexible(
                      flex: 1,
                      child: TextModel(
                        data: 'Right Window',
                        style: oblioTheme.textTheme.bodyText1!,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
