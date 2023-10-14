import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_web/theme/theme_provider.dart';

class MySwitchTheme extends StatelessWidget {
  const MySwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark;
    return Center(
      child: Row(
        children: [
          Visibility(
            visible: !isDarkMode,
            child: const Icon(
              Icons.light_mode,
              color: Colors.yellow,
            ),
          ),
          Switch(
            value: isDarkMode,
            onChanged: (_) => Provider.of<ThemeProvider>(context, listen: false)
                .toggleTheme(),
          ),
          Visibility(
            visible: isDarkMode,
            child: const Icon(
              Icons.dark_mode,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
