import '../controller/menu_android_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MenuAndroidScreen.
///
/// This class ensures that the MenuAndroidController is created when the
/// MenuAndroidScreen is first loaded.
class MenuAndroidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuAndroidController());
  }
}
