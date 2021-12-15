import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';

class DetailsTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final String content;
  const DetailsTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: oblioTheme.textTheme.overline),
              SizedBox(height: 5),
              Text(content, style: oblioTheme.primaryTextTheme.headline2),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
