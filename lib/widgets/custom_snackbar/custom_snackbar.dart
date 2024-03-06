// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:template_web/constants/constants.dart';

class CustomSnackBar extends StatelessWidget {
  final String? title;
  final String message;
  final Color color;

  const CustomSnackBar.success({
    Key? key,
    this.title,
    required this.message,
    this.color = Colors.green,
  }) : super(key: key);

  const CustomSnackBar.error({
    Key? key,
    this.title,
    required this.message,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width *
            0.5, // Limite de 50% da largura da tela
      ),
      child: IntrinsicWidth(
        child: Container(
          margin: const EdgeInsets.only(bottom: defaultPadding),
          padding: const EdgeInsets.all(defaultPadding),
          constraints: const BoxConstraints(
            minHeight: 50,
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      message,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
