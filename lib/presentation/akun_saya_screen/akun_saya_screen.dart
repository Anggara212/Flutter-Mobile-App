import 'controller/akun_saya_controller.dart';
import 'package:flutter/material.dart';
import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nanoudesu_s_application1/widgets/custom_elevated_button.dart';

class AkunSayaScreen extends GetWidget<AkunSayaController> {
  const AkunSayaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_data_pribadi".tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildThirtyEight(
                          jenisKelamin: "lbl_nama".tr,
                          lakiLaki: "lbl_muhammad_sandi".tr)),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildThirtyEight(
                          jenisKelamin: "lbl_jenis_kelamin".tr,
                          lakiLaki: "lbl_laki_laki".tr)),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildThirtyEight(
                          jenisKelamin: "lbl_tanggal_lahir".tr,
                          lakiLaki: "lbl_19_11_2004".tr)),
                  SizedBox(height: 24.v),
                  Divider(),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_contact".tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildForty(
                          handphone: "lbl_email".tr,
                          password: "msg_muh_gmail_com".tr)),
                  SizedBox(height: 8.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildForty(
                          handphone: "lbl_handphone".tr,
                          password: "lbl_01".tr)),
                  SizedBox(height: 32.v),
                  Divider(),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_log_out".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 3.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSignoutsqure,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillRedA,
                      buttonTextStyle: CustomTextStyles.titleSmallRedA700,
                      onPressed: () {
                        onTapLogOut();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 129.v,
        centerTitle: true,
        title: SizedBox(
            height: 129.v,
            width: double.maxFinite,
            child: Stack(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgImage1),
              SizedBox(
                  height: 129.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgImage2,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin:
                                EdgeInsets.fromLTRB(148.h, 33.v, 149.h, 33.v),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: appTheme.blueGray50, width: 2.h),
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder31),
                            child: Container(
                                height: 63.adaptSize,
                                width: 63.adaptSize,
                                padding: EdgeInsets.all(1.h),
                                decoration: AppDecoration.outlineBluegray502
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder31),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImg60x60,
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          radius: BorderRadius.circular(30.h),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle28,
                                          height: 14.v,
                                          width: 55.h,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.fromLTRB(
                                              3.h, 46.v, 3.h, 1.v)),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  22.h, 47.v, 21.h, 3.v),
                                              child: Text("lbl_ubah".tr,
                                                  style: CustomTextStyles
                                                      .nunitoOnPrimarySemiBold7_1)))
                                    ])))),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        margin: EdgeInsets.fromLTRB(10.h, 10.v, 330.h, 104.v),
                        onTap: () {
                          onTapArrowLeft();
                        }),
                    AppbarSubtitleOne(
                        text: "msg_tekan_untuk_mengubah".tr,
                        margin: EdgeInsets.only(top: 112.v))
                  ]))
            ])));
  }

  /// Common widget
  Widget _buildThirtyEight({
    required String jenisKelamin,
    required String lakiLaki,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(jenisKelamin,
          style:
              theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900)),
      Spacer(),
      Text(lakiLaki,
          style:
              theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900)),
      CustomImageView(
          imagePath: ImageConstant.imgVector9,
          height: 12.v,
          width: 6.h,
          margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 4.v))
    ]);
  }

  /// Common widget
  Widget _buildForty({
    required String handphone,
    required String password,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(handphone,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900)),
          Spacer(),
          Text(password,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900)),
          CustomImageView(
              imagePath: ImageConstant.imgVector9,
              height: 12.v,
              width: 6.h,
              margin: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 6.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the loginAndroidScreen when the action is triggered.
  onTapLogOut() {
    Get.toNamed(
      AppRoutes.loginAndroidScreen,
    );
  }
}
