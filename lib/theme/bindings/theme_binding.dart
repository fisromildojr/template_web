import 'package:get/get.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

class ThemeBinding implements Bindings {
  @override
  void dependencies() {
    // Theme
    Get.lazyPut(() => ThemeController());
  }
}
