import 'package:flutter/material.dart';

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('About Page Mobile'),
        Container(
          height: 200,
          width: 400,
          color: Colors.red,
        ),
        const SizedBox(height: 50),
        const FlutterLogo(size: 100),
      ],
    );
  }
}
