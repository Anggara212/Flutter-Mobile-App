import 'controller/menu_android_active_controller.dart';
import 'package:flutter/material.dart';
import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_circleimage_one.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_title_button.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nanoudesu_s_application1/widgets/custom_icon_button.dart';

class MenuAndroidActiveScreen extends GetWidget<MenuAndroidActiveController> {
  const MenuAndroidActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_aktifitas_lainnya".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 9.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCompass,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h, bottom: 3.v),
                            child: Text("lbl_restaurants".tr,
                                style: theme.textTheme.bodyMedium))
                      ]),
                      SizedBox(height: 8.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h, bottom: 3.v),
                            child: Text("lbl_deals".tr,
                                style: theme.textTheme.bodyMedium))
                      ]),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBag,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h, top: 4.v),
                                child: Text("lbl_my_orders".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 18.v),
                      Divider(indent: 2.h),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_pusat_bantuan".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgQuestion,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 2.v),
                                child: Text("msg_bantuan_pengguna".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 3.v),
                                child: Text("msg_hubungi_customer".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 19.v),
                      Divider(indent: 2.h),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 130.v,
        title: Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Column(children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 29.v),
                    child: Column(children: [
                      AppbarTitleImage(
                          imagePath: ImageConstant.imgArrowLeft,
                          margin: EdgeInsets.only(right: 41.h),
                          onTap: () {
                            onTapArrowLeft();
                          }),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 9.h),
                              padding: EdgeInsets.all(1.h),
                              decoration: AppDecoration.outlineBluegray502
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder26),
                              child: AppbarCircleimageOne(
                                  imagePath: ImageConstant.imgImg49x49)))
                    ])),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 27.v),
                    child: Column(children: [
                      AppbarTitle(
                          text: "msg_hello_muhammad".tr,
                          margin: EdgeInsets.only(right: 6.h)),
                      AppbarSubtitle(
                          text: "msg_welcome_back_to".tr,
                          margin: EdgeInsets.only(right: 41.h)),
                      SizedBox(height: 2.v),
                      AppbarTitleButton(
                          margin: EdgeInsets.only(right: 106.h),
                          onTap: () {
                            onTapAkunSaya();
                          }),
                      SizedBox(height: 1.v),
                      Container(
                          height: 28.169998.v,
                          width: 27.350006.h,
                          margin: EdgeInsets.only(left: 163.h),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, right: 1.h),
                                child: CustomIconButton(
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                    alignment: Alignment.bottomLeft,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup7))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 17.h, bottom: 18.v),
                                    decoration: AppDecoration
                                        .fillOnPrimaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: Text("lbl_4".tr,
                                        style: CustomTextStyles
                                            .nunitoOnPrimarySemiBold7_1)))
                          ]))
                    ]))
              ])
            ])),
        actions: [
          Container(
              height: 28.169998.v,
              width: 27.359985.h,
              margin: EdgeInsets.only(left: 11.h, top: 92.v, right: 9.h),
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        margin: EdgeInsets.only(top: 2.v, right: 1.h),
                        decoration: BoxDecoration(
                            color: appTheme.gray100,
                            borderRadius: BorderRadius.circular(11.h)))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: EdgeInsets.only(left: 17.h, bottom: 18.v),
                        padding: EdgeInsets.symmetric(horizontal: 2.h),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_7".tr,
                                style: CustomTextStyles
                                    .nunitoOnPrimarySemiBold7_1)))),
                CustomImageView(
                    imagePath: ImageConstant.imgMessageFill,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.fromLTRB(4.h, 7.v, 7.h, 5.v))
              ])),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgNotificationSetting,
              margin: EdgeInsets.only(left: 11.h, top: 94.v, right: 22.h))
        ],
        styleType: Style.bgFill_1);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the akunSayaScreen when the action is triggered.
  onTapAkunSaya() {
    Get.toNamed(
      AppRoutes.akunSayaScreen,
    );
  }
}
