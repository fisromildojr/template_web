import 'package:get/get.dart';

class NavBarController extends GetxController {
  bool _isExpanded = true;

  bool get isExpanded => _isExpanded;

  toggleMenu() {
    _isExpanded = !_isExpanded;
    update();
  }
}
