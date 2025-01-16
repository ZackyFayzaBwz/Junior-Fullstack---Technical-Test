import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Home, Inventory, Profil }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavInventory,
      activeIcon: ImageConstant.imgNavInventory,
      title: "Inventory",
      type: BottomBarEnum.Inventory,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfil,
      activeIcon: ImageConstant.imgNavProfil,
      title: "Profil",
      type: BottomBarEnum.Profil,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(
              alpha: 0.12,
            ),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              width: 42.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 26.h,
                    width: double.maxFinite,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  )
                ],
              ),
            ),
            activeIcon: SizedBox(
              width: 28.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 26.h,
                    width: double.maxFinite,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  )
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
