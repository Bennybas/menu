import 'package:flutter/material.dart';
import 'index.dart';

class GroupView extends StatelessWidget {
  static String routeName = '/group';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
    );
  }
}
