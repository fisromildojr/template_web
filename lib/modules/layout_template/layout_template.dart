import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/utils/utils.dart';
import 'package:template_web/widgets/navbar/navbar_lateral.dart';
import 'package:template_web/widgets/navbar/navbar_superior.dart';
import 'package:template_web/widgets/navdrawer/navdrawer.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: Utils.showDrawer(sizingInformation) ? const NavDrawer() : null,
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.background),
          child: Row(
            children: [
              const NavBarLateral(),
              Expanded(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: NavBarSuperior(),
                        ),
                      ],
                    ),
                    Expanded(
                      child: child,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
