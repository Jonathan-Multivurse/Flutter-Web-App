import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';

import 'package:oblio/components/search_input.dart';

class SearchInput extends StatelessWidget {
  final bool obscure;
  final String label;
  final Widget prefixIcon;
  const SearchInput({
    Key? key,
    required this.obscure,
    required this.label,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;

    dynamicWidth() {
      if (width > 750 && width < 950) {
        return width * 0.5;
      } else if (width >= 950 && width < 1400) {
        return width * 0.35;
      } else if (width > 1400) {
        return width * 0.50;
      } else if (width <= 750) {
        return width * 0.5;
      } else if (width <= 450) {
        return width * 0.5;
      }
    }

    return Padding(
      padding: EdgeInsets.all(10),
      child: SearchInputModel(
        height: 45,
        width: dynamicWidth()!,
        padding: EdgeInsets.all(10),
        style: oblioTheme.inputDecorationTheme.labelStyle!,
        cursorColor: oblioTheme.textSelectionTheme.cursorColor!,
        fillColor: Colors.white,
        label: label,
        prefixIcon: prefixIcon,
        validator: (String) {},
        controller: TextEditingController(),
        labelStyle: oblioTheme.inputDecorationTheme.labelStyle!,
      ),
    );
  }
}
