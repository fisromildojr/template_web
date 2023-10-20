import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template_web/modules/imagem/pages/imagem_list_page_desktop.dart';
import 'package:template_web/modules/imagem/pages/imagem_list_page_mobile.dart';
import 'package:template_web/modules/imagem/pages/imagem_list_page_tablet.dart';

class ImagemListPage extends StatelessWidget {
  ImagemListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => ImagemListPageMobile(),
      tablet: (context) => ImagemListPageTablet(),
      desktop: (context) => ImagemListPageDesktop(),
    );
  }
}
