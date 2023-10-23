import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:get/get.dart';

class InitialController extends GetxController {
  List<BreadCrumbItem> _breadCrumbs = [];

  List<BreadCrumbItem> get breadCrumbs => _breadCrumbs;

  addBreadCrumb(GetPage page) {
    _breadCrumbs.add(BreadCrumbItem(
      content: InkWell(
        child: Text(page.name),
      ),
    ));
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Esta é uma mensagem de exemplo.'),
      action: SnackBarAction(
        label: 'Desfazer',
        onPressed: () {
          // Ação a ser executada quando o botão "Desfazer" é pressionado.
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
