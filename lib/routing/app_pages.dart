import 'package:get/get.dart';
import 'package:template_web/modules/about/pages/about_page.dart';
import 'package:template_web/modules/home/pages/home_page.dart';
import 'package:template_web/modules/layout_template/layout_template.dart';
import 'package:template_web/routing/route_names.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: LayoutRoute,
      page: () => LayoutTemplate(),
      bindings: [],
    ),
    GetPage(
      name: HomeRoute,
      page: () => HomePage(),
      bindings: [],
    ),
    GetPage(
      name: AboutRoute,
      page: () => AboutPage(),
      bindings: [],
    ),
  ];
}
