import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/widgets/navbar/navbar_desktop.dart';
import 'package:template_web/widgets/navbar/navbar_mobile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => NavBarMobile(),
      tablet: (context) => NavBarDesktop(),
      desktop: (context) => NavBarDesktop(),
    );
  }
}
