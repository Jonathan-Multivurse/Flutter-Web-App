import 'package:flutter/material.dart';
import 'package:oblio/app.dart';
import 'package:oblio/routes/routes.dart';
import 'package:oblio/state/state_provider.dart';
import 'package:oblio/theme/oblio_theme.dart';

void main() => runApp((Application()));

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return stateProvider(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: App(),
        theme: oblioTheme,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
