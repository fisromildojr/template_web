import 'package:responsive_builder/responsive_builder.dart';

class Utils {
  static bool showDrawer(SizingInformation sizingInformation) {
    return sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
        sizingInformation.deviceScreenType == DeviceScreenType.tablet;
  }
}
