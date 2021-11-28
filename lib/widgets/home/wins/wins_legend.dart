import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/circular_frame_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class WinsLegend extends StatelessWidget {
  const WinsLegend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15, left: 35, right: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CircularFrameModel(
                    height: 10,
                    width: 10,
                    child: Container(),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: HexColor('#435BD9'),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(0, 1),
                        ),
                      ],
                    )),
                SizedBox(width: 5),
                TextModel(
                    data: 'MQL',
                    style: oblioTheme.textTheme.overline!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr)
              ],
            ),
            Row(
              children: [
                CircularFrameModel(
                    height: 10,
                    width: 10,
                    child: Container(),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: HexColor('#FDAF4C'),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(0, 1),
                        ),
                      ],
                    )),
                SizedBox(width: 5),
                TextModel(
                    data: 'SQL',
                    style: oblioTheme.textTheme.overline!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr)
              ],
            ),
             Row(
              children: [
                CircularFrameModel(
                    height: 10,
                    width: 10,
                    child: Container(),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: HexColor('#FDAF4C'),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(0, 1),
                        ),
                      ],
                    )),
                SizedBox(width: 5),
                TextModel(
                    data: 'SQL',
                    style: oblioTheme.textTheme.overline!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr)
              ],
            ),
             Row(
              children: [
                CircularFrameModel(
                    height: 10,
                    width: 10,
                    child: Container(),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: HexColor('#FDAF4C'),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(0, 1),
                        ),
                      ],
                    )),
                SizedBox(width: 5),
                TextModel(
                    data: 'SQL',
                    style: oblioTheme.textTheme.overline!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr)
              ],
            ),
          ],
        ));
  }
}
