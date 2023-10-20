import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/modules/imagem/controllers/imagem_page_controller.dart';

class ImagemListPageTablet extends GetView<ImagemPageController> {
  const ImagemListPageTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImagemPageController>(builder: (context) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: defaultPadding,
              bottom: defaultPadding,
              left: defaultPadding * 2,
              right: defaultPadding * 2,
            ),
            child: TextField(
              onSubmitted: (value) => controller.pesquisar(value),
              decoration: InputDecoration(
                labelText: 'Pesquisar',
                hintText: 'Digite sua pesquisa aqui',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      20.0), // Ajuste o valor conforme desejado
                ),
              ),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => controller.atualizar(),
              child: GridView.builder(
                controller: controller.scrollController,
                physics: AlwaysScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: defaultPadding,
                  mainAxisSpacing: defaultPadding,
                ),
                itemCount: controller.loadedPhotos.length +
                    (controller.isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index < controller.loadedPhotos.length) {
                    final photo = controller.loadedPhotos[index];
                    return Image.network(photo.src?.medium ?? '')
                        .moveUpOnHover; // Exibe a imagem
                  } else {
                    return controller.isLoading
                        ? Center(child: CircularProgressIndicator())
                        : Container();
                  }
                },
              ),
            ),
          ),
        ],
      );
    });
  }
}
