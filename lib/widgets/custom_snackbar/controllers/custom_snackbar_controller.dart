import 'package:get/get.dart';
import 'package:template_web/widgets/custom_snackbar/custom_snackbar.dart';

class CustomSnackBarController extends GetxController {
  final List<CustomSnackBar> _snackBars = [];

  void showSnackBarSuccess({
    required String message,
    String? title,
  }) {
    final snackBar = CustomSnackBar.success(
      title: title,
      message: message,
    );

    _snackBars.add(snackBar);
    update();

    Future.delayed(const Duration(seconds: 3), () {
      _snackBars.remove(snackBar);
      update();
    });
  }

  void showSnackBarError({
    required String message,
    String? title,
  }) {
    final snackBar = CustomSnackBar.error(
      title: title,
      message: message,
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
