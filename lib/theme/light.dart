import 'package:flutter/material.dart';

final lightMode = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.grey[200],
  ),
  cardTheme: CardTheme(
    color: Colors.grey[50],
    shadowColor: Colors.grey[900],
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.black87),
    overline: TextStyle(color: Colors.grey[900]),
    button: TextStyle(color: Colors.grey[900]),
    subtitle1: TextStyle(color: Colors.grey[900]),
    subtitle2: TextStyle(color: Colors.grey[700]),
    bodyText2: TextStyle(color: Colors.grey[800]),
    headline1: TextStyle(color: Colors.grey[200]),
    headline3: TextStyle(color: Colors.grey[850]),
  ),
);
