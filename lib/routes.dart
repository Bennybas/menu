import 'package:flutter/widgets.dart';
import 'package:ems/factory%20view/main.dart';
import 'package:ems/screens/home/components/discount_banner.dart';
import 'package:ems/screens/home/home_screen.dart';
import 'package:ems/screens/login_success/login_success_screen.dart';
import 'package:ems/screens/sign_in/sign_in_screen.dart';
import 'package:ems/screens/splash/splash_screen.dart';
import 'package:ems/dashboard/main.dart';
import 'package:ems/general/main.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  DiscountBanner.routeName: (context) => DiscountBanner(),
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  FactoryView.routeName: (context) => FactoryView(),
  dashBoard.routeName: (context) => dashBoard(),
  General.routeName: (context) => General(),
};
