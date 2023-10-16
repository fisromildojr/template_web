import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/modules/not_found/pages/not_found_page_desktop.dart';
import 'package:template_web/modules/not_found/pages/not_found_page_mobile.dart';
import 'package:template_web/modules/not_found/pages/not_found_page_tablet.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NotFoundPageMobile(),
      tablet: (context) => const NotFoundPageTablet(),
      desktop: (context) => const NotFoundPageDesktop(),
    );
  }
}
