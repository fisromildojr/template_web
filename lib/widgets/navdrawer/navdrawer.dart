import 'package:flutter/material.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/widgets/navdrawer/drawer_item.dart';
import 'package:template_web/widgets/navdrawer/navdrawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: const Column(
        children: [
          NavDrawerHeader(),
          DrawerItem(
            title: 'Home',
            icon: Icons.home,
            route: HomeRoute,
          ),
          DrawerItem(
            title: 'About',
            icon: Icons.help,
            route: AbouteRoute,
          ),
        ],
      ),
    );
  }
}
