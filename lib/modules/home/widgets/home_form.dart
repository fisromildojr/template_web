import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/modules/home/widgets/home_form_desktop.dart';
import 'package:template_web/modules/home/widgets/home_form_mobile.dart';
import 'package:template_web/modules/home/widgets/home_form_tablet.dart';

class HomeForm extends StatelessWidget {
  HomeForm({
    super.key,
  });

  final String? name = Get.parameters['name'];

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomeFormMobile(),
      tablet: (context) => HomeFormTablet(),
      desktop: (context) => HomeFormDesktop(),
    );
  }
}
