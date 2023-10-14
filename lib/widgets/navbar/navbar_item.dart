import 'package:flutter/material.dart';
import 'package:template_web/locator.dart';
import 'package:template_web/services/navigation_service.dart';

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
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(route);
        // Navigator.of(context)
        //     .pop(); // Fechar o Drawer quando clicar em um item do drawer
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
