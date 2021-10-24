import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const String a = '/a';
const String b = '/b';
const String c = '/c';
const String d = '/d';
const String e = '/e';
const String f = '/f';
const String g = '/g';
const String h = '/h';
const String i = '/i';
const String j = '/j';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case a:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case b:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case c:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case d:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case e:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case f:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case g:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case h:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case i:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case j:
        return PageTransition(
          child: Container(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      default:
        return null;
    }
  }
}
