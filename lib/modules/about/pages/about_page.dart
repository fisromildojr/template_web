import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/modules/About/pages/About_page_desktop.dart';
import 'package:template_web/modules/about/pages/about_page_mobile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const AboutPageMobile(),
      tablet: (context) => const AboutPageDesktop(),
      desktop: (context) => const AboutPageDesktop(),
    );
  }
}
