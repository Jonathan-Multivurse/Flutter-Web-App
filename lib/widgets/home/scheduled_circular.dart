import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/circular_frame_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class ScheduledCircular extends StatelessWidget {
  const ScheduledCircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              hoverColor: Colors.transparent,
              child: Container(
                width: 80,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: HexColor('#5F78E4').withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextModel(
                  data: 'PREV',
                  style: TextStyle(color: HexColor('#711BEF')),
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
                    Icons.mail,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                    color: HexColor('#711BEF'),
                    borderRadius: BorderRadius.circular(100))),
            InkWell(
              onTap: () {},
              hoverColor: Colors.transparent,
              child: Container(
                width: 80,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: HexColor('#5F78E4').withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextModel(
                  data: 'NEXT',
                  style: TextStyle(color: HexColor('#711BEF')),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          ],
        ));
  }
}
