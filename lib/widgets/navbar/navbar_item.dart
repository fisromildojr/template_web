import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String route;
  final Widget? icon;
  const NavBarItem({
    super.key,
    required this.title,
    required this.route,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? "";

    return GestureDetector(
      onTap: () {
        Get.toNamed(route);
        // Get.back(); // Fechar o Drawer quando clicar em um item do drawer
      },
      child: GetBuilder<ThemeController>(
          init: Get.find<ThemeController>(),
          builder: (controller) {
            return ListTile(
              selected: currentRoute == route,
              leading: icon,
              title: Text(
                title,
                style: const TextStyle(fontSize: 18),
              ),
            ).showCursorOnHover;
          }),
    );
  }
}
