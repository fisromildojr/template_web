import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/theme/theme_provider.dart';
import 'package:template_web/widgets/navdrawer/drawer_item.dart';
import 'package:template_web/widgets/navdrawer/navdrawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
            ? Colors.white
            : Colors.black,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: [
          NavDrawerHeader(),
          DrawerItem(
            title: 'Home',
            icon: Icons.home,
            route: HomeRoute,
          ),
          DrawerItem(
            title: 'Imagens',
            icon: Icons.help,
            route: ImagemListPageRoute,
          ),
          DrawerItem(
            title: 'About',
            icon: Icons.help,
            route: AboutRoute,
          ),
        ],
      ),
    );
  }
}
