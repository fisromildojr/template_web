import 'package:flutter/material.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/widgets/navbar/navbar_item.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: FlutterLogo(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
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
            ],
          ),
        ],
      ),
    );
  }
}
