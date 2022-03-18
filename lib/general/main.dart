import 'package:flutter/material.dart';
import 'model.dart';

class General extends StatelessWidget {
  static String routeName = '/General';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModelPage(),
    );
  }
}
