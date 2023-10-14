import 'package:flutter/material.dart';
import 'package:template_web/theme/my_colors.dart';
import 'package:template_web/widgets/my_switch_theme.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: MyColors.primaryColor,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Flutter Template Web',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'by: @romildojroficial',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MySwitchTheme(),
            ],
          ),
        ],
      ),
    );
  }
}
