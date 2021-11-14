import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class HomeHeaderTitle extends StatelessWidget {
  const HomeHeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    titleVisibility() => width > 500 ? true : false;
    return Visibility(
      visible: titleVisibility(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 35,
            child: VerticalDivider(
                width: 35,
                color: oblioTheme.dividerTheme.color,
                thickness: oblioTheme.dividerTheme.thickness),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextModel(
                data: 'Active User Profile',
                style: oblioTheme.textTheme.overline!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
              TextModel(
                data: 'Marketing . Junior',
                style: oblioTheme.textTheme.headline5!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
