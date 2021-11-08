import 'package:flutter/material.dart';

class FabButtonModel extends StatelessWidget {
  final void Function() onPressed;
  final Color background;
  final Widget child;
  final bool mini;
  final String tag;
  const FabButtonModel(
      {Key? key,
      required this.onPressed,
      required this.background,
      required this.child,
      required this.mini,
      required this.tag,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: tag,
      mini: mini,
      backgroundColor: background,
      child: child,
      onPressed: onPressed,
    );
  }
}
