import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/modules/home/pages/home_page_desktop.dart';
import 'package:template_web/modules/home/pages/home_page_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomePageMobile(),
      tablet: (context) => const HomePageDesktop(),
      desktop: (context) => const HomePageDesktop(),
    );
  }
}
