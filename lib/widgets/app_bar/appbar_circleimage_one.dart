import 'package:flutter/material.dart';
import 'package:nanoudesu_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimageOne extends StatelessWidget {
  AppbarCircleimageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.customBorderTL42,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 26.adaptSize,
          width: 26.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.only(
            topLeft: Radius.circular(42.h),
            topRight: Radius.circular(41.h),
            bottomLeft: Radius.circular(42.h),
            bottomRight: Radius.circular(42.h),
          ),
        ),
      ),
    );
  }
}
