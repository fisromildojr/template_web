import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/modules/imagem/controllers/imagem_back_controller.dart';
import 'package:template_web/modules/imagem/models/imagem_model.dart';

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

  atualizar() {
    loadedPhotos.clear();
    currentPage = 0;
    _loadMoreData();
  }
}
