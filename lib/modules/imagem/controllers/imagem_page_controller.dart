import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/modules/imagem/controllers/imagem_back_controller.dart';
import 'package:template_web/modules/imagem/models/imagem_model.dart';
import 'package:template_web/theme/theme_provider.dart';

class ImagemPageController extends GetxController {
  bool isLoading = false;
  int currentPage = 0;
  String query = '';
  List<Photos> loadedPhotos = []; // Lista de imagens carregadas
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    _loadMoreData();

    // Adicione um listener ao ScrollController para verificar quando o usuário rola até o final
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // O usuário rolou até o final, carregue mais dados
        _loadMoreData();
      }
    });
    super.onInit();
  }

  void _loadMoreData() async {
    if (isLoading) return;

    isLoading = true;
    update();

    final newImages =
        await ImagemBackController().listarImagens(currentPage, query);

    // await Future.delayed(const Duration(seconds: 2));
    if (newImages != null) {
      loadedPhotos
          .addAll(newImages.photos!); // Adiciona as novas imagens à lista
      currentPage++; // Incrementa a página
      isLoading = false;
      update();
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  pesquisar(String value) {
    loadedPhotos.clear();
    currentPage = 0;
    query = value;
    _loadMoreData();
  }

  void openImageModal(BuildContext context, Photos photos) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Stack(
            children: [
              PhotoView(
                  heroAttributes:
                      PhotoViewHeroAttributes(tag: photos.id.toString()),
                  imageProvider: NetworkImage(photos.src?.large2x ??
                      ''), // Substitua pelo URL da sua imagem
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2,
                  backgroundDecoration: BoxDecoration(
                    color: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        ? Colors.black87
                        : Colors.white,
                  )),
              Positioned(
                top: defaultPadding,
                right: defaultPadding,
                child: Container(
                  decoration: BoxDecoration(
                    color: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
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
                      color: Provider.of<ThemeProvider>(context).themeMode ==
                              ThemeMode.dark
                          ? Colors.black87
                          : Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  atualizar() {
    loadedPhotos.clear();
    currentPage = 0;
    _loadMoreData();
  }
}
