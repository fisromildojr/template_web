import 'package:flutter/material.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/widgets/my_switch_theme.dart';
import 'package:template_web/widgets/navbar/navbar_item.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
            width: 150,
            child: FlutterLogo(),
          ),
          const Text(
            'Template Web',
            style: TextStyle(fontSize: 40),
          ),
          Expanded(child: Container()),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const NavBarItem(
                title: 'Home',
                route: HomeRoute,
              ).showCursorOnHover.moveUpOnHover,
              const SizedBox(width: 60),
              const NavBarItem(
                title: 'About',
                route: AboutRoute,
              ).showCursorOnHover.moveUpOnHover,
              const SizedBox(width: 60),
              const MySwitchTheme(),
            ],
          ),
        ],
      ),
    );
  }
}
