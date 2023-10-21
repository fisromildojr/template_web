import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/routing/route_names.dart';
import 'package:template_web/theme/theme_provider.dart';
import 'package:template_web/widgets/my_switch_theme.dart';
import 'package:template_web/widgets/navbar/navbar_item.dart';

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FlutterLogo(),
                ),
                Text(
                  'Template Web',
                  style: TextStyle(fontSize: 35),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg"),
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Romildo Jr',
                  style: TextStyle(fontWeight: FontWeight.w800),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('fis.romildojr@gmail.com')],
            ),
            const SizedBox(width: 60),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MySwitchTheme(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const NavBarItem(
              title: 'Home',
              route: HomeRoute,
              icon: Icon(Icons.home),
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
