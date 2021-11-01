import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/app.dart';
import 'package:oblio/routes/routes.dart';
import 'package:oblio/state/password/password_cubit.dart';
import 'package:oblio/state/privacy/privacy_cubit.dart';
import 'package:oblio/state/terms/terms_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<PasswordCubit>(
        create: (BuildContext context) => PasswordCubit(),
      ),
      BlocProvider<TermsCubit>(
        create: (BuildContext context) => TermsCubit(),
      ),
      BlocProvider<PrivacyCubit>(
        create: (BuildContext context) => PrivacyCubit(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
      theme: oblioTheme,
      onGenerateRoute: Routes.generateRoute,
    ),
  ));
}
