import 'package:flutter/material.dart';
import 'package:oblio/app.dart';
import 'package:oblio/routes/routes.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
      onGenerateRoute: Routes.generateRoute,
    ));
