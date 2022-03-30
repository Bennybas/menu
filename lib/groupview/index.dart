import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    var response = await http
        .get(Uri.parse('http://103.219.207.129/ems_api/api/single_sheet_view'));
    // print(response.body);
    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      setState(() {
        users = items;
      });
    } else {
      users = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF303030),
        title: Text(
          'AusPower-overallview',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: getBody(),
      backgroundColor: Color(0xFFFBE9E7),
    );
  }

  Widget getBody() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return getCard(users[index]);
        });
  }

  Widget getCard(item) {
    var name = item['kwh'];
    var image = item['image'];
    var Rvolt = item['R_Voltage'];
    var machinecode = item['machine_code'];
    var AVG_Current = item['AVG_Current'];
    var Total_Watts = item['Total_Watts'];
    var R_Current = item['R_Current'];
    var C_KWH = item['C_KWH'];
    var avg = item['AVG_V'];
    var ncom = item['nocom'];
    var avgp = item['AVG_PoFactor'];
    var Frequency = item['Frequency'];
    var Y_Watts = item['Y_Watts'];
    var YB_Voltage = item['YB_Voltage'];
    var R_Watts = item['R_Watts'];

    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          ExpansionTile(
              title: Row(
                children: [
                  Image.network(
                    image,
                    width: 160,
                    height: 160,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            name.toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        ncom,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            color: Color(0xDD000000)),
                      ),
                    ],
                  )
                ],
              ),
              children: <Widget>[
                ListTile(
                  title: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 370,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFD7CCC8)),
                                child: Column(
                                  children: [
                                    Text(
                                      'R_Volt                    $Rvolt',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'AVG_Current         $AVG_Current',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'Total_Watts          $Total_Watts',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'R_Current              $R_Current',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 370,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFD7CCC8)),
                                child: Column(
                                  children: [
                                    Text(
                                      'machinecode           $machinecode',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'avg         $avg',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'Frequency          $Frequency',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'Y_Watts              $Y_Watts',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 370,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFD7CCC8)),
                                child: Column(
                                  children: [
                                    Text(
                                      'avgp                  $avgp',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      '       C_KWH                  $C_KWH',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      '       YB_Voltage                  $YB_Voltage',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      '       R_Watts                  $R_Watts',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                )
              ]),
        ],
      ),
    );
  }
}
