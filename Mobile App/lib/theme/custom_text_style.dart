import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withValues(
          alpha: 0.5,
        ),
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallBlack900Thin =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withValues(
          alpha: 0.5,
        ),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodySmallPlusJakartaSans =>
      theme.textTheme.bodySmall!.plusJakartaSans;
// Title text style
  static TextStyle get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static TextStyle get titleSmallPlusJakartaSans =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}
