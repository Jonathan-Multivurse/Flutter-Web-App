import 'package:flutter/material.dart';
import 'package:oblio/components/fab_button_model.dart';

class CreateButton extends StatelessWidget {
  final void Function() onPressed;
  const CreateButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FabButtonModel(
      onPressed: onPressed,
      background: Colors.grey[200]!.withOpacity(0.2),
      hover: Colors.grey[200]!.withOpacity(0.3),
      child: Icon(Icons.add_circle,
      size: 22,),
      mini: true,
      tag: 'headercreate',
      elevation: 0,
      hoverElevation: 0,
    );
  }
}
