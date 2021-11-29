import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/app.dart';
import 'package:oblio/routes/routes.dart';
import 'package:oblio/state/collapse/collapse_cubit.dart';
import 'package:oblio/state/left-menu/left_menu_cubit.dart';
import 'package:oblio/state/owned-opp/owned_opp.dart';
import 'package:oblio/state/password/password_cubit.dart';
import 'package:oblio/state/pipeline-drawer/pipeline_drawer.dart';
import 'package:oblio/state/privacy/privacy_cubit.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/state/scheduled/scheduled_cubit.dart';
import 'package:oblio/state/terms/terms_cubit.dart';
import 'package:oblio/state/wins-opp/wins_opp.dart';
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
      BlocProvider<RightMenuCubit>(
        create: (BuildContext context) => RightMenuCubit(),
      ),
      BlocProvider<RightWindowCubit>(
        create: (BuildContext context) => RightWindowCubit(),
      ),
      BlocProvider<LeftMenuCubit>(
        create: (BuildContext context) => LeftMenuCubit(),
      ),
      BlocProvider<CollapseCubit>(
        create: (BuildContext context) => CollapseCubit(),
      ),
      BlocProvider<ScheduledCubit>(
        create: (BuildContext context) => ScheduledCubit(),
      ),
      BlocProvider<PipelineDrawerCubit>(
        create: (BuildContext context) => PipelineDrawerCubit(),
      ),
      BlocProvider<OwnedOppCubit>(
        create: (BuildContext context) => OwnedOppCubit(),
      ),
      BlocProvider<WinsOppCubit>(
        create: (BuildContext context) => WinsOppCubit(),
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
