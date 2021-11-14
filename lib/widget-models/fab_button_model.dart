import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';

class FabButtonModel extends StatelessWidget {
  final void Function() onPressed;
  final Color background;
  final Widget child;
  final bool mini;
  final String tag;
  const FabButtonModel({
    Key? key,
    required this.onPressed,
    required this.background,
    required this.child,
    required this.mini,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return FloatingActionButton(
          heroTag: tag,
          mini: mini,
          backgroundColor: background,
          child: child,
          onPressed: onPressed,
        );
      },
    );
  }
}
