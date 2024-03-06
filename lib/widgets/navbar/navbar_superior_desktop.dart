import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/widgets/custom_snackbar/controllers/custom_snackbar_controller.dart';

class NavBarSuperiorDesktop extends StatelessWidget {
  NavBarSuperiorDesktop({Key? key}) : super(key: key);

  RxBool isContextMenuOpen = false.obs;

  void _showNotifications(TapDownDetails details) {
    isContextMenuOpen(true);
    showMenu(
      context: Get.context!,
      position: RelativeRect.fromLTRB(
        details.globalPosition.dx,
        details.globalPosition.dy,
        details.globalPosition.dx,
        details.globalPosition.dy,
      ),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'novoContrato',
          onTap: () => Get.toNamed('/contrato', parameters: {"id": "2"}),
          child: const ListTile(
            dense: true,
            title: Text(
              'Novo contrato',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                'Murilo cadastrou um novo contrato do Romildo Alves de Souza Junior, CPF: 034.693.941-05'),
          ),
        ),
      ],
    ).then((value) => isContextMenuOpen(false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft, // Começa da esquerda
          end: Alignment.centerRight, // Termina na direita
          colors: [Colors.blue, Colors.green], // Cores do gradiente
        ),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: defaultPadding,
                  right: defaultPadding,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BreadCrumb(
                      items: <BreadCrumbItem>[
                        BreadCrumbItem(
                          content: const Text(Navigator.defaultRouteName),
                        ),
                      ],
                      divider: const Icon(Icons.chevron_right),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () =>
                  Get.find<CustomSnackBarController>().showSnackBarError(
                message: "Esta é uma mensagem de erro.",
                title: "Título",
              ),
              child: Stack(
                children: [
                  const Icon(
                    Icons.chat,
                    size: 30,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Text(
                        '2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Obx(() => InkWell(
                  onTapDown: (isContextMenuOpen.isTrue)
                      ? null
                      : (details) => _showNotifications(details),
                  child: Stack(
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              width: defaultPadding * 2,
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg"),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
