import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/extensions/hover_extensions.dart';
import 'package:template_web/modules/imagem/controllers/imagem_page_controller.dart';

class ImagemListPageTablet extends StatefulWidget {
  ImagemListPageTablet({Key? key}) : super(key: key);

  @override
  State<ImagemListPageTablet> createState() => _ImagemListPageTabletState();
}

class _ImagemListPageTabletState extends State<ImagemListPageTablet> {
  final ScrollController scrollController = ScrollController();
  final controller = Get.find<ImagemPageController>();

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // O usuário rolou até o final, carregue mais dados
        controller.loadMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

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
                controller: scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
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
