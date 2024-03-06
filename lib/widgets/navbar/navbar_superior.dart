import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/widgets/navbar/navbar_superior_desktop.dart';
import 'package:template_web/widgets/navbar/navbar_superior_mobile.dart';
import 'package:template_web/widgets/navbar/navbar_superior_tablet.dart';

class NavBarSuperior extends StatelessWidget {
  const NavBarSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => NavBarSuperiorMobile(),
      tablet: (context) => NavBarSuperiorTablet(),
      desktop: (context) => NavBarSuperiorDesktop(),
    ).showCursorOnHover;
  }
}
