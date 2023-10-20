import 'package:get/get.dart';

class NavigationService {
  navigateTo(
    String routeName, {
    Map<String, String>? queryParams,
  }) {
    if (queryParams != null) {
      routeName = Uri(path: routeName, queryParameters: queryParams).toString();
    }

    return Get.toNamed(routeName);
  }

  void goBack() {
    return Get.back();
  }
}
