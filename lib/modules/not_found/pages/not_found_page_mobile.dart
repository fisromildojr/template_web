import 'package:flutter/material.dart';

class NotFoundPageMobile extends StatelessWidget {
  const NotFoundPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/emoji_assustado.png',
          width: MediaQuery.of(context).size.width * 0.2,
        ),
        const Text(
          '404\nPágina não encontrada!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50.0,
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
    );
  }
}
