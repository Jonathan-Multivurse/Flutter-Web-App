import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';

class SearchInputModel extends StatelessWidget {
  final double height;
  final double width;
  final TextStyle style;
  final Color cursorColor;
  final Color fillColor;
  final String label;
  final Widget prefixIcon;
  final TextStyle labelStyle;
  final EdgeInsetsGeometry padding;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  SearchInputModel({
    Key? key,
    required this.height,
    required this.width,
    required this.style,
    required this.cursorColor,
    required this.fillColor,
    required this.label,
    required this.prefixIcon,
    required this.labelStyle,
    required this.padding,
    this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Material(
          color: Colors.transparent,
          child: TextFormField(
            obscureText: false,
            style: style,
            cursorColor: cursorColor,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              isDense: false,
              hoverColor: Colors.transparent,
              prefixIcon: prefixIcon,
              suffixStyle: TextStyle(color: oblioTheme.primaryColorDark),
              fillColor: fillColor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: Colors.white, width: 1, style: BorderStyle.solid)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: Colors.white, width: 1, style: BorderStyle.solid)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: Colors.white, width: 1, style: BorderStyle.solid)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: Colors.white, width: 1, style: BorderStyle.solid)),
              contentPadding: padding,
              label: Text(label),
              labelStyle: labelStyle,
            ),
            validator: validator,
            controller: controller,
          ),
        ));
  }
}
