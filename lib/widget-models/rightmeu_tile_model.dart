import 'package:flutter/material.dart';

class RightMenuTileModel extends StatelessWidget {
  final Widget? title;

  const RightMenuTileModel({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      dense: true,
      contentPadding: EdgeInsets.all(10),
      enabled: true,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      tileColor: Colors.white,
      selectedTileColor: Colors.transparent,
      enableFeedback: true,
    );
  }
}
