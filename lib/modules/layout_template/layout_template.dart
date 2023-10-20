import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/modules/not_found/pages/not_found_page.dart';
import 'package:template_web/widgets/centered_page/centered_page.dart';
import 'package:template_web/widgets/navbar/navbar.dart';
import 'package:template_web/widgets/navdrawer/navdrawer.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget? child;
  const LayoutTemplate({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavDrawer()
            : null,
        body: CenteredPage(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const NavBar(),
                const Divider(),
                Expanded(
                  child: child ?? const NotFoundPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
