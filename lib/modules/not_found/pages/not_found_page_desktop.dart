import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundPageDesktop extends StatelessWidget {
  const NotFoundPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/emoji_assustado.png',
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Url: ${Get.currentRoute}",
              style: const TextStyle(
                fontSize: 25.0,
                // fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              '404 - Página não encontrada!',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Verifique a rota e tente novamente...',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
