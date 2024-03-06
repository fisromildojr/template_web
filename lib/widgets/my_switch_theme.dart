import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

class MySwitchTheme extends StatelessWidget {
  const MySwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (controller) {
          return Center(
            child: Row(
              children: [
                Visibility(
                  visible: controller.themeMode != ThemeMode.dark,
                  child: const Icon(
                    Icons.light_mode,
                    color: Colors.amber,
                  ),
                ),
                Switch(
                  value: controller.themeMode == ThemeMode.dark,
                  onChanged: (_) => controller.toggleTheme(),
                ),
                Visibility(
                  visible: controller.themeMode == ThemeMode.dark,
                  child: const Icon(
                    Icons.dark_mode,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
