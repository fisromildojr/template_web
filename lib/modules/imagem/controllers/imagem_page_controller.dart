import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/modules/imagem/controllers/imagem_back_controller.dart';
import 'package:template_web/modules/imagem/models/imagem_model.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

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

  void openImageModal(BuildContext context, Photos photos) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: GetBuilder<ThemeController>(
              init: Get.find<ThemeController>(),
              builder: (controller) {
                return Stack(
                  children: [
                    PhotoView(
                        heroAttributes:
                            PhotoViewHeroAttributes(tag: photos.id.toString()),
                        imageProvider: NetworkImage(photos.src?.large2x ??
                            ''), // Substitua pelo URL da sua imagem
                        minScale: PhotoViewComputedScale.contained,
                        maxScale: PhotoViewComputedScale.covered * 2,
                        backgroundDecoration: BoxDecoration(
                          color: controller.themeMode == ThemeMode.dark
                              ? Colors.black87
                              : Colors.white,
                        )),
                    Positioned(
                      top: defaultPadding,
                      right: defaultPadding,
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.themeMode == ThemeMode.dark
                              ? Colors.white
                              : Colors.black87,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () => Get.back(),
                          icon: Icon(
                            Icons.close,
                            color: controller.themeMode == ThemeMode.dark
                                ? Colors.black87
                                : Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
        );
      },
    );
  }

  atualizar() {
    loadedPhotos.clear();
    currentPage = 0;
    loadMoreData();
  }
}
