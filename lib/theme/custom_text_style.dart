import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get bodyMediumSecondaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  // Label text style
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallPrimary_1 => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallSecondaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get labelSmallSecondaryContainer_1 =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get labelSmallSemiBold => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallSemiBold9 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  // Nunito text style
  static get nunitoBluegray400 => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).nunito;
  static get nunitoBluegray400Regular => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).nunito;
  static get nunitoBluegray400Regular6 => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).nunito;
  static get nunitoOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w700,
      ).nunito;
  static get nunitoOnPrimaryBold => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w700,
      ).nunito;
  static get nunitoOnPrimarySemiBold => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).nunito;
  static get nunitoOnPrimarySemiBold7 => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).nunito;
  static get nunitoOnPrimarySemiBold7_1 => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).nunito;
  static get nunitoSecondaryContainer => TextStyle(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).nunito;
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargeOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumDeeporange500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange500,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
