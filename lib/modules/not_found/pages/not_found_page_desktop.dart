import 'package:flutter/material.dart';

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
        const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404 - Página não encontrada!',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 50),
            Text(
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
