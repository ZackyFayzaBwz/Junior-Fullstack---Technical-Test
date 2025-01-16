import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/productgrid_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

// ignore_for_file: must_be_immutable
class HomeInitialPageState extends State<HomeInitialPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.gradientGrayToBlueGray,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 15.h,
                top: 20.h,
                right: 12.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildAvatarSection(context),
                  SizedBox(height: 14.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "PELIHARAAN MU MAKAN APA ?",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  _buildFoodSearchSection(context),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "LAINNYA? , CARI DI SINI YA",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 8.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  _buildProductGrid(context),
                  SizedBox(height: 46.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAvatarSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 40.h,
            width: 42.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          SizedBox(
            width: 290.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.h,
                  child: Text(
                    "HI,Zacky!",
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMedium16,
                  ),
                ),
                SizedBox(
                  width: 254.h,
                  child: Text(
                    "Gimana Perkembangan Kucing Mu ? Cek Di Sini",
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodSearchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                children: [
                  Container(
                    height: 32.h,
                    width: 32.h,
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon,
                          height: 26.h,
                          width: 24.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "ANJING",
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                children: [
                  Container(
                    height: 32.h,
                    width: 32.h,
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon26x22,
                          height: 26.h,
                          width: 24.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "KUCING",
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductGrid(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 16.h,
        ),
        child: ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 2,
          maxItemsPerRow: 2,
          horizontalGridSpacing: 10.h,
          verticalGridSpacing: 10.h,
          builder: (context, items) => ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            children: items,
          ),
          gridItems: List.generate(
            4,
            (index) {
              return ProductgridItemWidget(
                onTapImgImageoneone: () {
                  onTapImgImageoneone(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Navigates to the iphone16ThreeScreen when the action is triggered.
  onTapImgImageoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone16ThreeScreen);
  }
}
