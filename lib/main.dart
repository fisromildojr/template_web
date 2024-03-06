import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:template_web/modules/initial/bindings/initial_binding.dart';
// import 'package:template_web/locator.dart';
import 'package:template_web/modules/layout_template/layout_template.dart';
import 'package:template_web/routing/app_pages.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';
import 'package:template_web/theme/my_theme.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  // setupLocator();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: ThemeController(),
      builder: (controller) {
        return GetMaterialApp(
          title: 'Template Web',
          debugShowCheckedModeBanner: false,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          themeMode: controller.themeMode,
          builder: (context, child) => LayoutTemplate(child: child!),
          getPages: AppPages.routes,
          initialRoute: HomeRoute,
          initialBinding: InitialBinding(),
          defaultTransition: Transition.downToUp,
        );
      },
    );
  }
}
