import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/theme/controllers/theme_controller.dart';

class CardSmallDashBoard extends StatelessWidget {
  final Widget imagem;
  final String titulo;
  final String valor;
  final IconData iconResumo;
  final String resumo;
  const CardSmallDashBoard({
    super.key,
    required this.imagem,
    required this.titulo,
    required this.valor,
    required this.iconResumo,
    required this.resumo,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (controller) {
          return Container(
            margin: const EdgeInsets.all(defaultPadding),
            padding: const EdgeInsets.all(defaultPadding),
            width: 350,
            height: 130,
            decoration: BoxDecoration(
              color: controller.themeMode == ThemeMode.dark
                  ? Colors.black87
                  : Colors.white,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: imagem,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titulo,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(valor,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconResumo,
                      size: 12,
                    ),
                    Text(resumo,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
