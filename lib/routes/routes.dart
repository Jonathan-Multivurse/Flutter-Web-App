import 'package:flutter/material.dart';
import 'package:oblio/screens/authentication/authentication_screen.dart';
import 'package:oblio/screens/home/home.dart';
import 'package:oblio/screens/registration/registration_screen.dart';
import 'package:page_transition/page_transition.dart';

const String AuthenticationRoute = '/authentication';
const String RegistrationRoute = '/registration';
const String HomeRoute = '/home';
const String d = '/d';
const String e = '/e';
const String f = '/f';
const String g = '/g';
const String h = '/h';
const String i = '/i';
const String j = '/j';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RegistrationRoute:
        return PageTransition(
          child: RegistrationScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 50),
        );
      case AuthenticationRoute:
        return PageTransition(
          child: AuthenticationScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 50),
        );
      case HomeRoute:
        return PageTransition(
          child: HomeScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 50),
        );
      case d:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 100),
        );
      case e:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case f:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case g:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case h:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case i:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case j:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      default:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
    }
  }
}
