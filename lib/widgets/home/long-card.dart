import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';

class LongCard extends StatelessWidget {
  final Widget child;
  const LongCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    responsiveWidth() {
      if (width > 1400) {
        return 350.0;
      } else if (width <= 1400 && width >= 700) {
        return 400.0;
      } else if (width < 700) {
        return 350.0;
      }
    }
    return IntrinsicHeight(
      child: Container(
        width: responsiveWidth(),
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
      ),
    );
  }
}
