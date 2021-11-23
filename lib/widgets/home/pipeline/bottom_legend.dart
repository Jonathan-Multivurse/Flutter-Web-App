import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/circular_frame_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class PipelineBottomLegend extends StatelessWidget {
  const PipelineBottomLegend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                CircularFrameModel(
                    height: 30,
                    width: 30,
                    child: Container(),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: HexColor('#FA4583'),
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
                SizedBox(height: 5),
                TextModel(
                    data: 'CUS',
                    style: oblioTheme.textTheme.overline!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr)
              ],
            ),
            Column(
              children: [
                CircularFrameModel(
                    height: 30,
                    width: 30,
                    child: Container(),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: HexColor('#0EBB6A'),
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
                SizedBox(height: 5),
                TextModel(
                    data: 'RET',
                    style: oblioTheme.textTheme.overline!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr)
              ],
            ),
          ],
        ));
  }
}
