import 'package:flutter/material.dart';
import 'package:template_web/modules/about/pages/about_page.dart';
import 'package:template_web/modules/home/pages/home_page.dart';
import 'package:template_web/modules/not_found/pages/not_found_page.dart';
import 'package:template_web/routing/route_names.dart';

Route<dynamic> gerenateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage());
    case AbouteRoute:
      return _getPageRoute(AboutPage());
    default:
      return _getPageRoute(NotFoundPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
