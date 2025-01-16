import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProductView extends StatelessWidget {
  ProductView({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientGrayToPrimaryContainer,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(22.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 22.h),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 370.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 44.h,
                  ),
                ),
                SizedBox(height: 28.h),
                Text(
                  "BOLD DRY FOOD ",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 20.h),
                CustomElevatedButton(
                  height: 38.h,
                  text: "RP.35.000",
                  margin: EdgeInsets.symmetric(horizontal: 46.h),
                  buttonStyle: CustomButtonStyles.outline,
                  buttonTextStyle: CustomTextStyles.titleSmallPlusJakartaSans,
                ),
                SizedBox(height: 54.h),
                CustomElevatedButton(
                  height: 56.h,
                  text: "ORDER",
                  buttonStyle: CustomButtonStyles.outlineBlack,
                  buttonTextStyle: theme.textTheme.bodyMedium!,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomNavigationBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Inventory:
        return "/";
      case BottomBarEnum.Profil:
        return "/";
      default:
        return "/";
    }
  }
}
