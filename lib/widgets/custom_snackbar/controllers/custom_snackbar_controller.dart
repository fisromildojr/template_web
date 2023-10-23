import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/widgets/custom_snackbar/custom_snackbar.dart';

class CustomSnackBarController extends GetxController {
  final List<CustomSnackBar> _snackBars = [];

  void showSnackBar({
    required String message,
    String? title,
    Color color = Colors.green,
  }) {
    final snackBar = CustomSnackBar.success(
      title: title,
      message: message,
      color: color,
    );

    _snackBars.add(snackBar);
    update();

    Future.delayed(const Duration(seconds: 3), () {
      _snackBars.remove(snackBar);
      update();
    });
  }

  List<CustomSnackBar> get snackBars => _snackBars;
}
