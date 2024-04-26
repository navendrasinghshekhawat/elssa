import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/add_new_address_screen/add_new_address_screen.dart';
import '../presentation/enter_otp_screen/enter_otp_screen.dart';
import '../presentation/login_old_users_screen/login_old_users_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/splash_screen/splash_screen.dart'; // ignore_for_file: must_be_immutable
import '../presentation/home_container_screen/home_container_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String loginOldUsersScreen = '/login_old_users_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    loginOldUsersScreen: (context) => LoginOldUsersScreen(),
    enterOtpScreen: (context) => EnterOtpScreen(),
    addNewAddressScreen: (context) => AddNewAddressScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),

    initialRoute: (context) => SplashScreen()
  };
}
