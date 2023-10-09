import 'package:flutter/material.dart';

class AboutPageDesktop extends StatelessWidget {
  const AboutPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('About Page Desktop/Tablet'),
        Container(
          height: 200,
          width: 400,
          color: Colors.red,
        ),
        SizedBox(height: 50),
        FlutterLogo(size: 100),
      ],
    );
  }
}
