import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/app.dart';
import 'package:oblio/routes/routes.dart';
import 'package:oblio/state/theme/theme_cubit.dart';
import 'package:oblio/theme/dark.dart';
import 'package:oblio/theme/light.dart';

void main() => runApp(BlocConsumer<ThemeCubit, bool>(
      listener: (context, state) {},
      builder: (context, state) {
        var dynamicTheme = state == true ? darkMode : lightMode;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: App(),
          theme: dynamicTheme,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    ));
