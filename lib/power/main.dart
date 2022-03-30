import 'graph.dart';
import 'package:flutter/material.dart';

class PowerPage extends StatelessWidget {
  static String routeName = '/Power';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firestore Chart',
      home: barChart(),
      //home:SalesHomePage(),
    );
  }
}
