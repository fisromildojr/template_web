import 'package:get/get.dart';
import 'package:template_web/modules/imagem/controllers/imagem_page_controller.dart';

class ImagemBinding implements Bindings {
  @override
  void dependencies() {
    // Imagem
    Get.put(ImagemPageController());
  }
}
