import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/presentation/menu_android_screen/models/menu_android_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MenuAndroidScreen.
///
/// This class manages the state of the MenuAndroidScreen, including the
/// current menuAndroidModelObj
class MenuAndroidController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController pizzaController = TextEditingController();

  TextEditingController dessertsController = TextEditingController();

  Rx<MenuAndroidModel> menuAndroidModelObj = MenuAndroidModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    pizzaController.dispose();
    dessertsController.dispose();
  }
}
