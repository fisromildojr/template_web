import 'package:flutter/material.dart';

class NotFoundPageMobile extends StatelessWidget {
  const NotFoundPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('NotFound Page Mobile'),
        SizedBox(height: 50),
        FlutterLogo(size: 100),
      ],
    );
  }
}
