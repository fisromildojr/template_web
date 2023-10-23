import 'package:get/get.dart';
import 'package:template_web/widgets/custom_snackbar/controllers/custom_snackbar_controller.dart';

class CustomSnackBarBinding implements Bindings {
  @override
  void dependencies() {
    // CustomSnackBar
    Get.put(CustomSnackBarController());
  }
}
