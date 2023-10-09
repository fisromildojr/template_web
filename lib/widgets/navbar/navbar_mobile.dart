import 'package:flutter/material.dart';
import 'package:template_web/widgets/navbar/navbar_logo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: Scaffold.of(context).openDrawer,
          ),
          const NavBarLogo(),
        ],
      ),
    );
  }
}
