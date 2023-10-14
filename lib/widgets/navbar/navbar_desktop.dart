import 'package:flutter/material.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/widgets/my_switch_theme.dart';
import 'package:template_web/widgets/navbar/navbar_item.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NavBarItem(
                title: 'Home',
                route: HomeRoute,
              ),
              SizedBox(width: 60),
              NavBarItem(
                title: 'About',
                route: AboutRoute,
              ),
              SizedBox(width: 60),
              MySwitchTheme(),
            ],
          ),
        ],
      ),
    );
  }
}
