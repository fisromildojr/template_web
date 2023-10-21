import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';

class NavBarSuperiorDesktop extends StatelessWidget {
  NavBarSuperiorDesktop({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showNotifications(TapDownDetails details) {
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
          child: ListTile(
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
        const PopupMenuItem<String>(
          value: 'novaConta',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'novoContrato',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'novoContrato',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'novoContrato',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'novoContrato',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'novoContrato',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          mouseCursor: MouseCursor.defer,
          value: 'novoContrato',
          child: ListTile(
            title: Text('Novo contrato'),
            subtitle: Text('Murilo cadastrou um novo contrato'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'teste',
          child: ListTile(
            title: Text('Teste'),
            subtitle: Text('Subtitulo'),
          ),
        ),
      ],
    );
    // showDialog(
    //   context: Get.context!,
    //   builder: (context) {
    //     return AlertDialog(
    //       title: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           const Text('Notificações'),
    //         ],
    //       ),
    //       content: SizedBox(
    //         width: 300, // Personalize o tamanho conforme necessário
    //         height: 400, // Personalize o tamanho conforme necessário
    //         child: ListView(
    //           children: const <Widget>[
    //             // Lista de notificações
    //             ListTile(
    //               title: Text('Notificação 1'),
    //             ),
    //             ListTile(
    //               title: Text('Notificação 2'),
    //             ),
    //             // Adicione mais notificações conforme necessário
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
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
            InkWell(
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
            InkWell(
              onTapDown: (Get.isDialogOpen ?? false)
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
            ),
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
