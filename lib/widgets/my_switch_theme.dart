import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

class MySwitchTheme extends StatelessWidget {
  const MySwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.find<ThemeController>().themeMode == ThemeMode.dark;
    return Center(
      child: Row(
        children: [
          Visibility(
            visible: !isDarkMode,
            child: const Icon(
              Icons.light_mode,
              color: Colors.amber,
            ),
          ),
          Switch(
            value: isDarkMode,
            onChanged: (_) => Get.find<ThemeController>().toggleTheme(),
          ),
          Visibility(
            visible: isDarkMode,
            child: const Icon(
              Icons.dark_mode,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
