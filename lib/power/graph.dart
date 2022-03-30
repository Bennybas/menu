import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class barChart extends StatefulWidget {
  @override
  _barChartState createState() => _barChartState();
}

class _barChartState extends State<barChart> {
  List<charts.Series<BarModel, String>> sampleData() {
    final data = [
      BarModel("11kv I/C", 24547.33),
      BarModel("SB2A I/C", 7302.27),
      BarModel("3.3kv I/C", 24184.00),
      BarModel("SS28", 5302.27),
      BarModel("SS30", 5191.68),
    ];
    return [
      charts.Series<BarModel, String>(
        data: data,
        id: 'barchart',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (BarModel energy, _) => energy.machinecode,
        measureFn: (BarModel energy, _) => energy.kwh,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('AusPower-Graph',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        backgroundColor: Color(0xFF303030),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 320,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFBDBDBD)),
            child: charts.BarChart(
              sampleData(),
              animate: true,
            ),
          ),
        ],
      )),
    );
  }
}
