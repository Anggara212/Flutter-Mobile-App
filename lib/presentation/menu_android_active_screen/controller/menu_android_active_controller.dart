import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/presentation/menu_android_active_screen/models/menu_android_active_model.dart';

/// A controller class for the MenuAndroidActiveScreen.
///
/// This class manages the state of the MenuAndroidActiveScreen, including the
/// current menuAndroidActiveModelObj
class MenuAndroidActiveController extends GetxController {
  Rx<MenuAndroidActiveModel> menuAndroidActiveModelObj =
      MenuAndroidActiveModel().obs;
}
