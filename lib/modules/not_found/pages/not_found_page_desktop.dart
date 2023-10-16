import 'package:flutter/material.dart';

class NotFoundPageDesktop extends StatelessWidget {
  const NotFoundPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('NotFound Page Desktop/Tablet'),
        SizedBox(height: 50),
        FlutterLogo(size: 100),
      ],
    );
  }
}
