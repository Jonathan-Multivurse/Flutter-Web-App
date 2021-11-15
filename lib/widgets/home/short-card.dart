import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/card_model.dart';

class ShortCard extends StatelessWidget {
  final Widget child;
  const ShortCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardModel(
      height: 325,
      width: 350,
      decoration: BoxDecoration(
        color: oblioTheme.cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: child,
    );
  }
}
