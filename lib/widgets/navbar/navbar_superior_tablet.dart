import 'package:flutter/material.dart';
import 'package:template_web/widgets/navbar/navbar_logo.dart';

class NavBarSuperiorTablet extends StatelessWidget {
  const NavBarSuperiorTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          const Text(
            'Template Web',
            style: TextStyle(fontSize: 40),
          ),
          Expanded(
            child: Container(),
          ),
          const NavBarLogo(),
        ],
      ),
    );
  }
}
