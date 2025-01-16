import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientGrayToErrorContainer,
        child: SafeArea(
          child: Container(
            height: SizeUtils.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: SizeUtils.height,
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildDeleteConfirmationSection(context),
                      _buildTitleSection(context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeleteConfirmationSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        decoration: AppDecoration.column1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgDeleteConfirmation,
              height: 359.h,
              width: 390.h,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleSection(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 200.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "KAMO \nPET STORE",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineLarge!.copyWith(
              height: 1.2,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 200.h,
              child: Text(
                "CARI KEBUTUHAN PELIHARAAN KAMU DI SINI ",
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallBlack900Thin,
              ),
            ),
          ),
          const SizedBox(height: 40), // Spacer
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, AppRoutes.homeScreen); // Navigasi ke homeScreen.
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.blue, // Warna tombol
            ),
            child: Text(
              "START",
              style: theme.textTheme.bodyLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
