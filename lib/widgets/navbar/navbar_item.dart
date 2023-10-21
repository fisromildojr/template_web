import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String route;
  const NavBarItem({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? "";

    return GestureDetector(
      onTap: () {
        Get.toNamed(route);
        // Get.back(); // Fechar o Drawer quando clicar em um item do drawer
      },
      child: Card(
        child: ListTile(
          selected: currentRoute == route,
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ).showCursorOnHover,
      ),
    );
  }
}
