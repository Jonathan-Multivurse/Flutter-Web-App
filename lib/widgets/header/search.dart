import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';

import 'package:oblio/components/search_input.dart';
import 'package:oblio/widgets/header/portal_card.dart';

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
    var height = device.height;
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
        onPressed: () {
          showDialog(
              barrierColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return Container(
                    padding: EdgeInsets.only(top: 100, right: 10),
                    alignment: Alignment.topCenter,
                    child: PortalCard(
                      height: height * 0.70,
                      width: width * 0.5,
                    ));
              });
        },
        prefixIcon: prefixIcon,
        validator: (String) {},
        controller: TextEditingController(),
        labelStyle: oblioTheme.inputDecorationTheme.labelStyle!,
      ),
    );
  }
}
