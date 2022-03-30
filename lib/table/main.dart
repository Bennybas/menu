import 'package:flutter/material.dart';
import 'model.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    ));

class TableView extends StatelessWidget {
  static String routeName = '/Table';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Chart',
      home: TablePage(),
      //home:SalesHomePage(),
    );
  }
}
