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
}
