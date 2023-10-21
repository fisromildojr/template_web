import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/widgets/navbar/navbar_lateral_desktop.dart';
import 'package:template_web/widgets/navbar/navbar_lateral_mobile.dart';
import 'package:template_web/widgets/navbar/navbar_lateral_tablet.dart';

class NavBarLateral extends StatelessWidget {
  const NavBarLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => NavBarLateralMobile(),
      tablet: (context) => NavBarLateralTablet(),
      desktop: (context) => NavBarLateralDesktop(),
    ).showCursorOnHover;
  }
}
