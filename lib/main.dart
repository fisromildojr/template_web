import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:provider/provider.dart';
import 'package:template_web/locator.dart';
import 'package:template_web/modules/layout_template/layout_template.dart';
import 'package:template_web/theme/my_theme.dart';
import 'package:template_web/theme/theme_provider.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  setupLocator();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template Web',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      home: const LayoutTemplate(),
    );
  }
}
