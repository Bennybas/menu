import 'package:flutter/material.dart';
import 'index.dart';

class dashBoard extends StatelessWidget {
  static String routeName = '/dashBoard';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
    );
  }
}
