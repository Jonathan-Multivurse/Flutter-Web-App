import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';

import 'package:oblio/widget-models/search_input.dart';

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

    dynamicWidth() => width > 500 ? width / 2 : width / 2;
    return Padding(
      padding: EdgeInsets.all(10),
      child: SearchInputModel(
        width: dynamicWidth(),
        padding: EdgeInsets.all(10),
        style: oblioTheme.inputDecorationTheme.labelStyle!,
        cursorColor: oblioTheme.textSelectionTheme.cursorColor!,
        fillColor: oblioTheme.inputDecorationTheme.fillColor!,
        label: label,
        prefixIcon: prefixIcon,
        validator: (String) {},
        controller: TextEditingController(),
        labelStyle: oblioTheme.inputDecorationTheme.labelStyle!,
      ),
    );
  }
}
