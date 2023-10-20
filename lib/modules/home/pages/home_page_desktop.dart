import 'package:flutter/material.dart';

class HomePageDesktop extends StatelessWidget {
  final String? name;
  const HomePageDesktop({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name ?? 'Home Page Desktop/Tablet'),
        Container(
          height: 200,
          width: 400,
          color: Colors.blue,
        ),
        const SizedBox(height: 50),
        const FlutterLogo(size: 100),
      ],
    );
  }
}
