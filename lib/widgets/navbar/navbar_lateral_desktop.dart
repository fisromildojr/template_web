import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/theme/theme_provider.dart';
import 'package:template_web/widgets/navbar/navbar_item.dart';
import 'package:template_web/widgets/navdrawer/navdrawer_header.dart';

class NavBarLateralDesktop extends StatelessWidget {
  const NavBarLateralDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.black87
            : Colors.white,
      ),
      // color: Get.isDarkMode ? Colors.black87 : Colors.white,
      child: SizedBox(
        width: 300,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavDrawerHeader(),
            const NavBarItem(
              title: 'Home',
              route: HomeRoute,
              icon: Icon(
                Icons.home,
              ),
            ).showCursorOnHover.moveUpOnHover,
            const SizedBox(width: 60),
            const NavBarItem(
              title: 'Imagens',
              route: ImagemListPageRoute,
              icon: Icon(
                Icons.photo_library,
              ),
            ).showCursorOnHover.moveUpOnHover,
            const SizedBox(width: 60),
            const NavBarItem(
              title: 'About',
              route: AboutRoute,
              icon: Icon(
                Icons.lightbulb,
              ),
            ).showCursorOnHover.moveUpOnHover,
            // const SizedBox(width: 60),
            // const MySwitchTheme(),
          ],
        ),
      ),
    );
  }
}
