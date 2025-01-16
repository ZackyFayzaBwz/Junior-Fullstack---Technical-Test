import 'package:flutter/material.dart';
import 'package:muhammad_zacky_s_application6/presentation/home_screen/widgets/productgrid_item_widget.dart';
import 'package:muhammad_zacky_s_application6/presentation/iphone_16_three_screen/Product.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splasScreen = '/splas_screen';

  static const String homeScreen = '/home_screen';

  static const String homeInitialPage = '/home_initial_page';

  static const String iphone16ThreeScreen = '/iphone_16_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splasScreen: (context) => SplashScreen(),
    homeScreen: (context) => HomeScreen(),
    iphone16ThreeScreen: (context) => ProductView(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
