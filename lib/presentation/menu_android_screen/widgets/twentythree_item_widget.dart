import '../models/twentythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nanoudesu_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TwentythreeItemWidget extends StatelessWidget {
  TwentythreeItemWidget(
    this.twentythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwentythreeItemModel twentythreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 1.v,
          right: 4.h,
          bottom: 1.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          twentythreeItemModelObj.burgerBtn!.value,
          style: TextStyle(
            color: theme.colorScheme.secondaryContainer.withOpacity(1),
            fontSize: 5.348570823669434.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgEmojiPizza15x15,
          height: 5.adaptSize,
          width: 5.adaptSize,
          margin: EdgeInsets.only(right: 3.h),
        ),
        selected: (twentythreeItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray50,
        selectedColor: appTheme.blueGray50,
        shape: (twentythreeItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.secondaryContainer,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
        onSelected: (value) {
          twentythreeItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
