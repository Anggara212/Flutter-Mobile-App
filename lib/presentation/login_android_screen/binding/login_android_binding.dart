import '../controller/login_android_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginAndroidScreen.
///
/// This class ensures that the LoginAndroidController is created when the
/// LoginAndroidScreen is first loaded.
class LoginAndroidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAndroidController());
  }
}
