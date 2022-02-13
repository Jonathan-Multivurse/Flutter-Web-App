import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TileModel extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final GestureTapCallback? onTap;
  final bool selected;

  const TileModel({
    Key? key,
    required this.leading,
    required this.title,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Colors.transparent,
            Colors.transparent,
          ],
        ),
      ),
      child: ListTile(
          leading: leading,
          title: title,
          dense: true,
          contentPadding: EdgeInsets.all(8),
          enabled: true,
          onTap: onTap,
          selected: selected,
          focusColor: Colors.transparent,
          tileColor: Colors.transparent,
          selectedTileColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          )),
    );
  }
}
