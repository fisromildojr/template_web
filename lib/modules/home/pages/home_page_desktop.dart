import 'package:flutter/material.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Home Page Desktop/Tablet'),
        Container(
          height: 200,
          width: 400,
          color: Colors.blue,
        ),
        SizedBox(height: 50),
        FlutterLogo(size: 100),
      ],
    );
  }
}
