import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/presentation/login_android_screen/models/login_android_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginAndroidScreen.
///
/// This class manages the state of the LoginAndroidScreen, including the
/// current loginAndroidModelObj
class LoginAndroidController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginAndroidModel> loginAndroidModelObj = LoginAndroidModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> keepMeLoggedIn = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.menuAndroidScreen,
      );
    });
  }
}
