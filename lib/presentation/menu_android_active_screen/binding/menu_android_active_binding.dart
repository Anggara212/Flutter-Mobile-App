import '../controller/menu_android_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MenuAndroidActiveScreen.
///
/// This class ensures that the MenuAndroidActiveController is created when the
/// MenuAndroidActiveScreen is first loaded.
class MenuAndroidActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuAndroidActiveController());
  }
}
