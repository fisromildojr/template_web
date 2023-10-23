import 'package:get/get.dart';
import 'package:template_web/modules/initial/controllers/initial_controller.dart';
import 'package:template_web/widgets/custom_snackbar/controllers/custom_snackbar_controller.dart';
import 'package:template_web/widgets/navbar/controllers/navbar_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // Initial
    Get.put(InitialController());
    Get.put(NavBarController());
    Get.put(CustomSnackBarController());
  }
}
