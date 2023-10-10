import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/locator.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/routing/router.dart';
import 'package:template_web/services/navigation_service.dart';
import 'package:template_web/widgets/centered_page/centered_page.dart';
import 'package:template_web/widgets/navbar/navbar.dart';
import 'package:template_web/widgets/navdrawer/navdrawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavDrawer()
            : null,
        body: CenteredPage(
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: gererateRoute,
                  initialRoute: HomeRoute,
                
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
