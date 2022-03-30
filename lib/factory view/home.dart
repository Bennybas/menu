import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Energy, String>> _seriesData;

  _generateData() {
    var data1 = [
      new Energy(1980, 'Jhon', 50),
    ];
    var data2 = [
      new Energy(1981, 'Rey', 60),
    ];
    var data3 = [
      new Energy(1983, 'Steve', 70),
    ];
    var data4 = [
      new Energy(1984, 'Kevin', 20),
    ];
    var data5 = [
      new Energy(1985, 'jeff', 40),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2019',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9988)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Energy pollution, _) => pollution.place,
        measureFn: (Energy pollution, _) => pollution.quantity,
        id: '2019',
        data: data5,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Energy pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff5971)),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = <charts.Series<Energy, String>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: 320,
            child: Column(
              children: [
                Expanded(
                  child: charts.BarChart(
                    _seriesData,
                    animate: true,
                    barGroupingType: charts.BarGroupingType.grouped,
                    animationDuration: Duration(seconds: 4),
                    defaultRenderer: new charts.BarRendererConfig(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Energy {
  String place;
  int year;
  int quantity;

  Energy(this.year, this.place, this.quantity);
}
