import 'package:get/get.dart';

class HttpService extends GetConnect {
  HttpService() {
    super.timeout = const Duration(seconds: 20);
  }
}
