import '../menu_android_screen/widgets/menuandroid_item_widget.dart';
import '../menu_android_screen/widgets/twentythree_item_widget.dart';
import 'controller/menu_android_controller.dart';
import 'models/menuandroid_item_model.dart';
import 'models/twentythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nanoudesu_s_application1/core/app_export.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:nanoudesu_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nanoudesu_s_application1/widgets/custom_elevated_button.dart';
import 'package:nanoudesu_s_application1/widgets/custom_icon_button.dart';
import 'package:nanoudesu_s_application1/widgets/custom_text_form_field.dart';

class MenuAndroidScreen extends GetWidget<MenuAndroidController> {
  const MenuAndroidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrameThree(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.h, vertical: 12.v),
                      child: Column(children: [
                        SizedBox(height: 8.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("lbl_categories".tr,
                                    style: theme.textTheme.titleSmall))),
                        SizedBox(height: 9.v),
                        _buildCategories(),
                        SizedBox(height: 14.v),
                        _buildNearbyRestaurants(),
                        SizedBox(height: 20.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("msg_nearby_restaurants".tr,
                                    style: theme.textTheme.titleSmall))),
                        SizedBox(height: 8.v),
                        _buildBurgersPizza(),
                        SizedBox(height: 17.v),
                        _buildMenuAndroid()
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFrameThree() {
    return SizedBox(
        height: 167.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              title: AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 15.h, top: 19.v, bottom: 78.v),
                  hintText: "lbl_search".tr,
                  controller: controller.searchController),
              actions: [
                Padding(
                    padding: EdgeInsets.fromLTRB(15.h, 17.v, 16.h, 78.v),
                    child: Column(children: [
                      Row(children: [
                        SizedBox(
                            height: 30.380001.v,
                            width: 30.050003.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 2.v, right: 2.h),
                                  child: CustomIconButton(
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      alignment: Alignment.bottomLeft,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGroup7))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: 11.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 19.h, bottom: 19.v),
                                      decoration: AppDecoration
                                          .fillOnPrimaryContainer
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Text("lbl_4".tr,
                                          style: CustomTextStyles
                                              .nunitoOnPrimarySemiBold)))
                            ])),
                        Container(
                            height: 30.380001.v,
                            width: 30.049988.h,
                            margin: EdgeInsets.only(left: 12.h),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      margin:
                                          EdgeInsets.only(top: 2.v, right: 2.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.gray100,
                                          borderRadius:
                                              BorderRadius.circular(12.h)))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: 19.h, bottom: 19.v),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3.h),
                                      decoration: AppDecoration
                                          .fillOnPrimaryContainer
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Text("lbl_7".tr,
                                          style: CustomTextStyles
                                              .nunitoOnPrimarySemiBold7))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgMessageFill,
                                  height: 17.adaptSize,
                                  width: 17.adaptSize,
                                  alignment: Alignment.bottomLeft,
                                  margin:
                                      EdgeInsets.fromLTRB(5.h, 8.v, 7.h, 4.v))
                            ])),
                        GestureDetector(
                            onTap: () {
                              onTapProfilePict();
                            },
                            child: Container(
                                margin: EdgeInsets.only(left: 12.h, top: 2.v),
                                decoration: AppDecoration.outlineBlueGray
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder14),
                                child: Column(children: [
                                  SizedBox(height: 1.v),
                                  AppbarCircleimage(
                                      imagePath: ImageConstant.imgImg,
                                      margin: EdgeInsets.only(right: 1.h))
                                ]))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 8.v, bottom: 2.v),
                            child: Column(children: [
                              SizedBox(
                                  width: 24.h,
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary)),
                              SizedBox(height: 5.v),
                              SizedBox(
                                  width: 24.h,
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary)),
                              SizedBox(height: 5.v),
                              SizedBox(
                                  width: 24.h,
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary))
                            ]))
                      ])
                    ]))
              ],
              styleType: Style.bgFill),
          Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15.h, top: 76.v),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 91.v,
                            width: 262.h,
                            child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 91.v,
                                          width: 262.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.gray100,
                                              borderRadius:
                                                  BorderRadius.circular(7.h)))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 13.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_all_deserts".tr,
                                                    style: CustomTextStyles
                                                        .labelSmallSemiBold),
                                                SizedBox(height: 3.v),
                                                Text("lbl_20_off".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary),
                                                SizedBox(height: 17.v),
                                                SizedBox(
                                                    width: 100.h,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("lbl_desert".tr,
                                                              style: CustomTextStyles
                                                                  .nunitoBluegray400Regular6),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgSlide,
                                                              height: 7.v,
                                                              width: 18.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          2.v))
                                                        ]))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImg91x115,
                                      height: 91.v,
                                      width: 115.h,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(left: 12.h))
                                ])),
                        Container(
                            height: 91.v,
                            width: 78.h,
                            margin: EdgeInsets.only(left: 5.h)),
                        Expanded(
                            child: Container(
                                width: 262.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup67),
                                        fit: BoxFit.cover)),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImg91x141,
                                      height: 91.v,
                                      width: 141.h),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.h, top: 11.v, bottom: 8.v),
                                      child: Column(children: [
                                        Text("lbl_big_burgers".tr,
                                            style: CustomTextStyles
                                                .labelSmallSemiBold9),
                                        Text("lbl_50_off".tr,
                                            style: CustomTextStyles
                                                .titleMediumDeeporange500),
                                        SizedBox(height: 18.v),
                                        SizedBox(
                                            height: 11.v,
                                            width: 102.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                          "lbl_fooddies".tr,
                                                          style: CustomTextStyles
                                                              .nunitoBluegray400Regular)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSlideOnprimarycontainer,
                                                      height: 7.v,
                                                      width: 18.h,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          right: 5.h))
                                                ]))
                                      ]))
                                ])))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildPizza() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: CustomTextFormField(
                controller: controller.pizzaController,
                hintText: "lbl_pizza".tr,
                hintStyle: CustomTextStyles.labelSmallSecondaryContainer,
                suffix: Container(
                    margin: EdgeInsets.fromLTRB(-17.h, 11.v, 30.h, 23.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgEmojiPizza,
                        height: 15.adaptSize,
                        width: 15.adaptSize)),
                suffixConstraints: BoxConstraints(maxHeight: 50.v))));
  }

  /// Section Widget
  Widget _buildCategories() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildPizza(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildBbq(
                  userImage: ImageConstant.imgEmojiPizza15x15,
                  bbqLabel: "lbl_burger".tr)),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildBbq(
                  userImage: ImageConstant.imgEmojiMeat,
                  bbqLabel: "lbl_bbq".tr))
        ]));
  }

  /// Section Widget
  Widget _buildDesserts() {
    return Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: CustomTextFormField(
            width: 100.h,
            controller: controller.dessertsController,
            hintText: "lbl_desserts".tr,
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(-24.h, 11.v, 30.h, 23.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEmojiCake,
                    height: 15.adaptSize,
                    width: 15.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 50.v)));
  }

  /// Section Widget
  Widget _buildNearbyRestaurants() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 7.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgEmojiSushi,
                        height: 15.adaptSize,
                        width: 15.adaptSize),
                    SizedBox(height: 4.v),
                    Text("lbl_sushi".tr,
                        style: CustomTextStyles.labelSmallPrimary_1)
                  ])),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: _buildBbq(
                  userImage: ImageConstant.imgEmojiBroccoli,
                  bbqLabel: "lbl_fegan".tr)),
          _buildDesserts()
        ]));
  }

  /// Section Widget
  Widget _buildFEATURED() {
    return CustomElevatedButton(
        width: 41.h,
        text: "lbl_featured".tr.toUpperCase(),
        buttonTextStyle: CustomTextStyles.nunitoOnPrimaryBold,
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildFEATURED1() {
    return CustomElevatedButton(
        width: 41.h,
        text: "lbl_featured".tr.toUpperCase(),
        buttonTextStyle: CustomTextStyles.nunitoOnPrimary,
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildBurgersPizza() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 9.h),
                  decoration: AppDecoration.outlineBluegray501
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 71.v,
                            width: 156.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMask,
                                  height: 71.v,
                                  width: 156.h,
                                  alignment: Alignment.center),
                              _buildFEATURED()
                            ])),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 141.h,
                                margin: EdgeInsets.symmetric(horizontal: 7.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("msg_royal_sushi_house".tr,
                                          style: theme.textTheme.labelSmall),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorBlueGray100,
                                          height: 7.v,
                                          width: 6.h,
                                          margin: EdgeInsets.only(top: 2.v))
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorBlueGray1004x4,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin: EdgeInsets.only(top: 2.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl_30_40_min".tr,
                                      style:
                                          CustomTextStyles.nunitoBluegray400)),
                              Container(
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 4.v, bottom: 2.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_32_min_sum".tr,
                                      style:
                                          CustomTextStyles.nunitoBluegray400))
                            ])),
                        SizedBox(height: 8.v),
                        Container(
                            margin: EdgeInsets.only(left: 7.h),
                            padding: EdgeInsets.symmetric(horizontal: 4.h),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEmojiSushi,
                                      height: 5.adaptSize,
                                      width: 5.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 3.h, bottom: 1.v),
                                      child: Text("lbl_sushi".tr,
                                          style: CustomTextStyles
                                              .nunitoSecondaryContainer))
                                ])),
                        SizedBox(height: 8.v)
                      ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 9.h),
                  decoration: AppDecoration.outlineBluegray501
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 71.v,
                            width: 156.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMask71x156,
                                  height: 71.v,
                                  width: 156.h,
                                  alignment: Alignment.center),
                              _buildFEATURED1()
                            ])),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 143.h,
                                margin: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 4.v),
                                          child: Text("lbl_burgers_pizza".tr,
                                              style:
                                                  theme.textTheme.labelSmall)),
                                      SizedBox(
                                          height: 15.v,
                                          width: 12.h,
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconOutlined,
                                                    height: 8.adaptSize,
                                                    width: 8.adaptSize,
                                                    alignment:
                                                        Alignment.bottomLeft),
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: SizedBox(
                                                        height: 14.v,
                                                        width: 7.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: Container(
                                                                      height: 7
                                                                          .adaptSize,
                                                                      width: 7
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          top: 2
                                                                              .v),
                                                                      decoration: BoxDecoration(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .primary,
                                                                          borderRadius: BorderRadius.circular(2
                                                                              .h),
                                                                          border: Border.all(
                                                                              color: theme.colorScheme.onPrimary,
                                                                              width: 1.h,
                                                                              strokeAlign: strokeAlignOutside)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "lbl_2"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium))
                                                            ])))
                                              ]))
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorBlueGray1004x4,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin: EdgeInsets.only(top: 2.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl_40_60_min".tr,
                                      style:
                                          CustomTextStyles.nunitoBluegray400)),
                              Container(
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 4.v, bottom: 2.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_24_min_sum".tr,
                                      style:
                                          CustomTextStyles.nunitoBluegray400))
                            ])),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Obx(() => Wrap(
                                runSpacing: 4.01.v,
                                spacing: 4.01.h,
                                children: List<Widget>.generate(
                                    controller
                                        .menuAndroidModelObj
                                        .value
                                        .twentythreeItemList
                                        .value
                                        .length, (index) {
                                  TwentythreeItemModel model = controller
                                      .menuAndroidModelObj
                                      .value
                                      .twentythreeItemList
                                      .value[index];
                                  return TwentythreeItemWidget(model);
                                })))),
                        SizedBox(height: 8.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMenuAndroid() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 124.v,
                crossAxisCount: 2,
                mainAxisSpacing: 19.h,
                crossAxisSpacing: 19.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .menuAndroidModelObj.value.menuandroidItemList.value.length,
            itemBuilder: (context, index) {
              MenuandroidItemModel model = controller
                  .menuAndroidModelObj.value.menuandroidItemList.value[index];
              return MenuandroidItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildBbq({
    required String userImage,
    required String bbqLabel,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 2.v),
                decoration: AppDecoration.outlineBluegray50
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 11.v),
                      CustomImageView(
                          imagePath: userImage,
                          height: 15.adaptSize,
                          width: 15.adaptSize),
                      SizedBox(height: 5.v),
                      Text(bbqLabel,
                          style: CustomTextStyles.labelSmallSecondaryContainer
                              .copyWith(
                                  color: theme.colorScheme.secondaryContainer
                                      .withOpacity(1)))
                    ]))));
  }

  /// Navigates to the akunSayaScreen when the action is triggered.
  onTapProfilePict() {
    Get.toNamed(
      AppRoutes.akunSayaScreen,
    );
  }
}
