import 'package:flutter/material.dart';
import 'model.dart';

class MachineGallery extends StatelessWidget {
  static String routeName = '/Machine';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModelPage(),
    );
  }
}
