import '../controller/menu_android_controller.dart';
import '../models/menuandroid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nanoudesu_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MenuandroidItemWidget extends StatelessWidget {
  MenuandroidItemWidget(
    this.menuandroidItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MenuandroidItemModel menuandroidItemModelObj;

  var controller = Get.find<MenuAndroidController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray501.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: menuandroidItemModelObj.ninjaSushi!.value,
              height: 71.v,
              width: 156.h,
            ),
          ),
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    menuandroidItemModelObj.ninjaSushi1!.value,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray100,
                  height: 7.v,
                  width: 6.h,
                  margin: EdgeInsets.only(
                    left: 92.h,
                    top: 2.v,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray1004x4,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(top: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      menuandroidItemModelObj.time!.value,
                      style: CustomTextStyles.nunitoBluegray400,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Obx(
                    () => Text(
                      menuandroidItemModelObj.price!.value,
                      style: CustomTextStyles.nunitoBluegray400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEmojiSushi,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    bottom: 1.v,
                  ),
                  child: Obx(
                    () => Text(
                      menuandroidItemModelObj.sushi!.value,
                      style: CustomTextStyles.nunitoSecondaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
