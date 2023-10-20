import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/modules/home/pages/home_page_desktop.dart';
import 'package:template_web/modules/home/pages/home_page_mobile.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final String? name = Get.parameters['name'];

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomePageMobile(),
      tablet: (context) => HomePageDesktop(
        name: name,
      ),
      desktop: (context) => HomePageDesktop(
        name: name,
      ),
    );
  }
}
