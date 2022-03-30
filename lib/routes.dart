import 'package:ems/groupview/main.dart';
import 'package:ems/machine%20gallery/main.dart';
import 'package:ems/screens/home/components/grid.dart';
import 'package:ems/table/main.dart';
import 'package:flutter/widgets.dart';
import 'package:ems/factory%20view/main.dart';
import 'package:ems/screens/home/home_screen.dart';
import 'package:ems/screens/sign_in/sign_in_screen.dart';
import 'package:ems/screens/splash/splash_screen.dart';
import 'package:ems/dashboard/main.dart';
import 'package:ems/general/main.dart';
import 'package:ems/power/main.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  Grid.routeName: (context) => Grid(),
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  FactoryView.routeName: (context) => FactoryView(),
  dashBoard.routeName: (context) => dashBoard(),
  General.routeName: (context) => General(),
  PowerPage.routeName: (context) => PowerPage(),
  TableView.routeName: (context) => TableView(),
  MachineGallery.routeName: (context) => MachineGallery(),
  GroupView.routeName: (context) => GroupView(),
};
