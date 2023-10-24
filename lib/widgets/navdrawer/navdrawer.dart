import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';
import 'package:template_web/widgets/navdrawer/drawer_item.dart';
import 'package:template_web/widgets/navdrawer/navdrawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (controller) {
          return Container(
            width: 300,
            decoration: BoxDecoration(
              color: controller.themeMode == ThemeMode.light
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
        });
  }
}
