import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/scheduled/scheduled_cubit.dart';
import 'package:oblio/widget-models/circular_frame_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class ScheduledCircular extends StatefulWidget {
  const ScheduledCircular({Key? key}) : super(key: key);

  @override
  State<ScheduledCircular> createState() => _ScheduledCircularState();
}

class _ScheduledCircularState extends State<ScheduledCircular> {
  int menu = 0;
  @override
  Widget build(BuildContext context) {
    List<String> circleItems = [
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
      HexColor('#435BD9'),
      HexColor('#FA4583'),
      HexColor('#5F78E4'),
      HexColor('#FDC173'),
      HexColor('#0EBB6A'),
      HexColor('#711BEF'),
      HexColor('#FDAF4C'),
    ];
    return BlocBuilder<ScheduledCubit, String>(
      builder: (context, scheduleState) {
        dynamicIcons() {
          if (scheduleState == 'calendar') {
            return iconItems[0];
          } else if (scheduleState == 'task') {
            return iconItems[1];
          } else if (scheduleState == 'image') {
            return iconItems[2];
          } else if (scheduleState == 'account') {
            return iconItems[3];
          } else if (scheduleState == 'cart') {
            return iconItems[4];
          } else if (scheduleState == 'email') {
            return iconItems[5];
          } else if (scheduleState == 'phone') {
            return iconItems[6];
          }
        }

        dynamicColors() {
          if (scheduleState == 'calendar') {
            return HexColor('#435BD9');
          } else if (scheduleState == 'task') {
            return HexColor('#FA4583');
          } else if (scheduleState == 'image') {
            return HexColor('#5F78E4');
          } else if (scheduleState == 'account') {
            return HexColor('#FDC173');
          } else if (scheduleState == 'cart') {
            return HexColor('#0EBB6A');
          } else if (scheduleState == 'email') {
            return HexColor('#711BEF');
          } else if (scheduleState == 'phone') {
            return HexColor('#FDAF4C');
          }
        }

        dynamicState() {
          if (menu == 0) {
            return context.read<ScheduledCubit>().calendar();
          } else if (menu == 1) {
            return context.read<ScheduledCubit>().task();
          } else if (menu == 2) {
            return context.read<ScheduledCubit>().image();
          } else if (menu == 3) {
            return context.read<ScheduledCubit>().account();
          } else if (menu == 4) {
            return context.read<ScheduledCubit>().cart();
          } else if (menu == 5) {
            return context.read<ScheduledCubit>().email();
          } else if (menu == 6) {
            return context.read<ScheduledCubit>().phone();
          }
        }

        return Container(
            padding: EdgeInsets.only(top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    if (menu > 0) {
                      setState(() {
                        menu--;
                      });
                    }
                    dynamicState();
                  },
                  hoverColor: Colors.transparent,
                  child: Container(
                    width: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: HexColor('#5F78E4').withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextModel(
                      data: 'PREV',
                      style: TextStyle(color: dynamicColors()),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
                CircularFrameModel(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(2),
                    child: Center(
                      child: Icon(
                        dynamicIcons(),
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: dynamicColors(),
                        borderRadius: BorderRadius.circular(100))),
                InkWell(
                  onTap: () {
                    if (menu < 6) {
                      setState(() {
                        menu++;
                      });
                    }
                    dynamicState();
                  },
                  hoverColor: Colors.transparent,
                  child: Container(
                    width: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: HexColor('#5F78E4').withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextModel(
                      data: 'NEXT',
                      style: TextStyle(color: dynamicColors()),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
