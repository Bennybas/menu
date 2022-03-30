import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<TablePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF303030),
        title: Text(
          'AusPower',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFCFC8DC)),
              child: Row(children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Table View',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 27),
                ),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            DataTable(columns: [
              DataColumn(
                  label: Text(
                'MC',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
              DataColumn(
                  label: Text(
                ' Kwh',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
              DataColumn(
                  label: Text(
                'Cost',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
              DataColumn(
                  label: Text(
                'VII',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
              DataColumn(
                  label: Text(
                'VLN',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
            ], rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('11220.43')),
                DataCell(Text('22.95')),
                DataCell(Text('5377.64')),
                DataCell(Text('122.44')),
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
