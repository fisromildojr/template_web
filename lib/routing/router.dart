import 'package:flutter/material.dart';
import 'package:template_web/extensions/string_extensions.dart';
import 'package:template_web/modules/about/pages/about_page.dart';
import 'package:template_web/modules/home/pages/home_page.dart';
import 'package:template_web/modules/layout_template/layout_template.dart';
import 'package:template_web/modules/not_found/pages/not_found_page.dart';
import 'package:template_web/routing/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name
      ?.getRoutingData; //getRoutingData é uma extensão de String que mostra o log das variáveis e o path da url
  switch (routingData?.route) {
    case LayoutRoute:
      return _getPageRoute(const LayoutTemplate(), settings);
    case HomeRoute:
      var name = routingData?['name'];
      return _getPageRoute(
          HomePage(
            name: name,
          ),
          settings);
    case AboutRoute:
      return _getPageRoute(const AboutPage(), settings);
    default:
      return _getPageRoute(const NotFoundPage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name ?? '');
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
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
