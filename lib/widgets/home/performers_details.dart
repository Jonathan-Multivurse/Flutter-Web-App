import 'package:flutter/material.dart';
import 'package:oblio/widget-models/text_model.dart';
import 'package:oblio/widgets/home/performers_avatar.dart';
import 'package:oblio/widgets/home/performers_num_data.dart';

class PerformersDetails extends StatelessWidget {
  final String number;
  final AssetImage image;
  final String title;
  final String name;
  final String numdata;
  const PerformersDetails({
    Key? key,
    required this.number,
    required this.image,
    required this.title,
    required this.name,
    required this.numdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PerformersAvatar(
                  number: number,
                  image: image,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextModel(
                      data: title,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 11,
                        letterSpacing: 0.2,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                    TextModel(
                      data: name,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 11,
                        letterSpacing: 0.2,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ),
                Expanded(child: Container()),
                PerformersNumData(
                  numdata: numdata,
                ),
              ],
            ),
          ],
        ));
  }
}
