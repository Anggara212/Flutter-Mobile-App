import 'controller/login_android_controller.dart';
import 'package:flutter/material.dart';
import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/core/utils/validation_functions.dart';
import 'package:nanoudesu_s_application1/widgets/custom_checkbox_button.dart';
import 'package:nanoudesu_s_application1/widgets/custom_elevated_button.dart';
import 'package:nanoudesu_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginAndroidScreen extends GetWidget<LoginAndroidController> {
  LoginAndroidScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 120.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_food".tr,
                                        style: CustomTextStyles
                                            .titleLargeOnPrimaryContainer_1),
                                    TextSpan(
                                        text: "lbl_delivery".tr,
                                        style: theme.textTheme.titleLarge)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 44.v),
                          Text("lbl_login".tr,
                              style: theme.textTheme.displayLarge),
                          SizedBox(height: 3.v),
                          SizedBox(
                              width: 325.h,
                              child: Text("msg_sign_in_with_your".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyMediumSecondaryContainer_1
                                      .copyWith(height: 1.43))),
                          SizedBox(height: 30.v),
                          Text("lbl_email".tr,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 2.v),
                          CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "msg_name_example_com".tr,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              },
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 18.h, vertical: 10.v)),
                          SizedBox(height: 18.v),
                          Text("lbl_password".tr,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 2.v),
                          Obx(() => CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "msg_min_8_characters".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 12.v, 15.h, 12.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: 17.v,
                                          width: 23.h))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 42.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword.value,
                              contentPadding: EdgeInsets.only(
                                  left: 18.h, top: 10.v, bottom: 10.v))),
                          SizedBox(height: 26.v),
                          _buildKeepMeLoggedIn(),
                          SizedBox(height: 34.v),
                          CustomElevatedButton(
                              height: 44.v,
                              text: "lbl_login".tr,
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              onPressed: () {
                                onTapLogin();
                              }),
                          SizedBox(height: 34.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_forgot_password".tr,
                                  style: CustomTextStyles.titleSmallPrimary)),
                          Spacer(),
                          SizedBox(height: 23.v),
                          Align(
                              alignment: Alignment.center,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumSecondaryContainer),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style: CustomTextStyles
                                            .titleSmallPrimary_1)
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  /// Section Widget
  Widget _buildKeepMeLoggedIn() {
    return Obx(() => CustomCheckboxButton(
        text: "msg_keep_me_logged_in".tr,
        value: controller.keepMeLoggedIn.value,
        onChange: (value) {
          controller.keepMeLoggedIn.value = value;
        }));
  }

  /// Navigates to the menuAndroidScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.menuAndroidScreen,
    );
  }
}
