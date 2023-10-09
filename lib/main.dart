import 'package:flutter/material.dart';
import 'package:template_web/locator.dart';
import 'package:template_web/modules/layout_template/layout_template.dart';
import 'package:template_web/routing/router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
      ),
      onGenerateRoute: gerenateRoute,
      home: const LayoutTemplate(),
    );
  }
}
