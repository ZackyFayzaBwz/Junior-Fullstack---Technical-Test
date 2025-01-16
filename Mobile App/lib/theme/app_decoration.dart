import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withValues(
          alpha: 0.05,
        ),
      );
// Gradient decorations
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray50, appTheme.blueGray600],
        ),
      );
  static BoxDecoration get gradientGrayToErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray50, theme.colorScheme.errorContainer],
        ),
      );
  static BoxDecoration get gradientGrayToPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray50, theme.colorScheme.primaryContainer],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withValues(
            alpha: 0.1,
          ),
          width: 1.h,
        ),
      );
// Column decorations
  static BoxDecoration get column1 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgDeleteConfirmationOnprimarycontainer,
          ),
          fit: BoxFit.fill,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}
