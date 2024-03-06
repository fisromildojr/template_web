import 'package:get/get.dart';
import 'package:template_web/modules/about/pages/about_page.dart';
import 'package:template_web/modules/home/pages/home_page.dart';
import 'package:template_web/modules/imagem/bindings/imagem_binding.dart';
import 'package:template_web/modules/imagem/pages/imagem_list_page.dart';
import 'package:template_web/modules/not_found/pages/not_found_page.dart';
import 'package:template_web/routing/route_names.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: HomeRoute,
      page: () => HomePage(),
      bindings: [],
    ),
    GetPage(
      name: AboutRoute,
      page: () => const AboutPage(),
      bindings: const [],
    ),
    GetPage(
      name: ImagemListPageRoute,
      page: () => ImagemListPage(),
      bindings: [
        ImagemBinding(),
      ],
    ),
    GetPage(
      name: '/contrato',
      page: () => ImagemListPage(),
      bindings: [
        ImagemBinding(),
      ],
    ),

    // 404 - page not found - Deixar sempre por ultimo...
    GetPage(name: '/:path', page: () => const NotFoundPage())
  ];
}
