import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FactoryView extends StatelessWidget {
  static String routeName = '/factoryview';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(1),
              child: Center(
                  child: Wrap(spacing: 10.0, runSpacing: 10.0, children: [
                SizedBox(
                  width: 180.0,
                  height: 200.0,
                  child: Card(
                    color: Colors.white60,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/start.png',
                          width: 150,
                        ),
                        Text(
                          'Today',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text('34434')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 190.0,
                  height: 180.0,
                  child: Card(
                    color: Color(0xFF8C9EFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/start.png',
                          width: 130,
                        ),
                        Text(
                          'Yesterday',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text('34434'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  height: 180.0,
                  child: Card(
                    color: Color(0xFFE1F5FE),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/pause.png',
                          width: 130,
                        ),
                        Text(
                          'Stop',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('34434'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 180.0,
                  height: 210.0,
                  child: Card(
                    color: Color(0XFF9FA8DA),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/play.png',
                          width: 130,
                        ),
                        Text(
                          'Running',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('34434'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 380,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFA7FFEB),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/diesel.png'),
                        Text(
                          'Diesel',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        Text('30L',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                HomePage(key: GlobalKey(), child: Container()),
              ])))
        ])),
      ),
    );
  }
}
