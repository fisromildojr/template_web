import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_web/constants/constants.dart';
import 'package:template_web/widgets/my_switch_theme.dart';
import 'package:template_web/widgets/navbar/controllers/navbar_controller.dart';

class NavDrawerHeader extends StatelessWidget {
  NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: FlutterLogo(),
                  ),
                  Text(
                    'Template Web',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => Get.find<NavBarController>().toggleMenu(),
                icon: Icon(Icons.menu),
              ),
            ],
          ),
          // const SizedBox(
          //   height: defaultPadding,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg"),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Romildo Jr',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('fis.romildojr@gmail.com',
                          style: TextStyle(fontSize: 12))
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MySwitchTheme(),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
