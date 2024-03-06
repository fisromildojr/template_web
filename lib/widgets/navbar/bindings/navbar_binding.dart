import 'package:get/get.dart';
import 'package:template_web/widgets/navbar/controllers/navbar_controller.dart';

class NavBarBinding implements Bindings {
  @override
  void dependencies() {
    // NavBar
    Get.lazyPut(() => NavBarController());
  }
}
