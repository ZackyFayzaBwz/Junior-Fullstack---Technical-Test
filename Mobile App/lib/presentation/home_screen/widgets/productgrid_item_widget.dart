import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProductgridItemWidget extends StatelessWidget {
  ProductgridItemWidget({Key? key, this.onTapImgImageoneone})
      : super(
          key: key,
        );

  VoidCallback? onTapImgImageoneone;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 212.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 196.h,
            width: 136.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.topCenter,
            onTap: () {
              onTapImgImageoneone?.call();
            },
          ),
          _buildBoldButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBoldButton(BuildContext context) {
    return CustomElevatedButton(
      text: "BOLD 1 KG ",
    );
  }
}
