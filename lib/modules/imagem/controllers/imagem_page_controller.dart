import 'package:get/get.dart';
import 'package:template_web/modules/imagem/controllers/imagem_back_controller.dart';
import 'package:template_web/modules/imagem/models/imagem_model.dart';

class ImagemPageController extends GetxController {
  bool isLoading = false;
  int currentPage = 0;
  String query = '';
  List<Photos> loadedPhotos = []; // Lista de imagens carregadas

  @override
  void onInit() {
    loadMoreData();
    super.onInit();
  }

  void loadMoreData() async {
    if (isLoading) return;

    isLoading = true;
    update();

    final newImages = await ImagemBackController()
        .listarImagens(currentPage, query.isNotEmpty ? query : 'nature');

    // await Future.delayed(const Duration(seconds: 2));
    if (newImages != null) {
      loadedPhotos
          .addAll(newImages.photos!); // Adiciona as novas imagens à lista
      currentPage++; // Incrementa a página
      isLoading = false;
      update();
    }
  }

  pesquisar(String value) {
    loadedPhotos.clear();
    currentPage = 0;
    query = value;
    loadMoreData();
  }

  atualizar() {
    loadedPhotos.clear();
    currentPage = 0;
    loadMoreData();
  }
}
