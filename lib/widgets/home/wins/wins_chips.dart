import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/chip_model.dart';

class WinsChips extends StatefulWidget {
  const WinsChips({Key? key}) : super(key: key);

  @override
  State<WinsChips> createState() => _WinsChipsState();
}

class _WinsChipsState extends State<WinsChips> {
  List<Color> chipColor = [
    HexColor('#dcdcdc'),
    HexColor('#dcdcdc'),
    HexColor('#dcdcdc'),
    HexColor('#dcdcdc'),
  ];
  List<Color> textColor = [
    HexColor('#808080'),
    HexColor('#808080'),
    HexColor('#808080'),
    HexColor('#808080'),
  ];

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.purple,
            Colors.transparent,
            Colors.transparent,
            Colors.purple
          ],
          stops: [
            0.0,
            0.2,
            0.9,
            1.0
          ], // 10% purple, 80% transparent, 10% purple
        ).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(() {
                  chipColor[0] = chipColor[0] == HexColor('#dcdcdc')
                      ? HexColor('#711BEF').withOpacity(0.2)
                      : HexColor('#dcdcdc');
                  textColor[0] = textColor[0] == HexColor('#808080')
                      ? HexColor('#711BEF')
                      : HexColor('#808080');
                });
              },
              child: ChipModel(
                label: Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  width: 80,
                  child: Text(
                    'RES',
                    style: TextStyle(
                      color: textColor[0],
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                color: chipColor[0],
                style: oblioTheme.textTheme.overline!,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(() {
                  chipColor[1] = chipColor[1] == HexColor('#dcdcdc')
                      ? HexColor('#711BEF').withOpacity(0.2)
                      : HexColor('#dcdcdc');
                  textColor[1] = textColor[1] == HexColor('#808080')
                      ? HexColor('#711BEF')
                      : HexColor('#808080');
                });
              },
              child: ChipModel(
                label: Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  width: 80,
                  child: Text(
                    'CUS',
                    style: TextStyle(
                      color: textColor[1],
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                color: chipColor[1],
                style: oblioTheme.textTheme.overline!,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(() {
                  chipColor[2] = chipColor[2] == HexColor('#dcdcdc')
                      ? HexColor('#711BEF').withOpacity(0.2)
                      : HexColor('#dcdcdc');
                  textColor[2] = textColor[2] == HexColor('#808080')
                      ? HexColor('#711BEF')
                      : HexColor('#808080');
                });
              },
              child: ChipModel(
                label: Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  width: 80,
                  child: Center(
                    child: Text(
                      'SQL',
                      style: TextStyle(
                        color: textColor[2],
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                color: chipColor[2],
                style: oblioTheme.textTheme.overline!,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(() {
                  chipColor[3] = chipColor[3] == HexColor('#dcdcdc')
                      ? HexColor('#711BEF').withOpacity(0.2)
                      : HexColor('#dcdcdc');
                  textColor[3] = textColor[3] == HexColor('#808080')
                      ? HexColor('#711BEF')
                      : HexColor('#808080');
                });
              },
              child: ChipModel(
                label: Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  width: 80,
                  child: Text(
                    'MQL',
                    style: TextStyle(
                      color: textColor[3],
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                color: chipColor[3],
                style: oblioTheme.textTheme.overline!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
