import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ModelPage extends StatefulWidget {
  @override
  _ModelPageState createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  List users = [];
  @override
  void initState() {
    this.fetchUser();
  }

  void fetchUser() async {
    var response = await http
        .get(Uri.parse('http://103.219.207.129/ems_api/api/single_sheet_view'));
    if (response.statusCode == 200) {
      var items = jsonDecode(response.body)['data'];
      setState(() {
        users = items;
      });
    } else {
      users = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AusPower- Machine Gallery',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        backgroundColor: Color(0xFF303030),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return getCard(users[index]);
      },
    );
  }

  Widget getCard(item) {
    var T1 = item['machine_code'];
    var img = item['image'];

    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF263238)),
                    child: Row(
                      children: [
                        Image.network(
                          img,
                          width: 120,
                          height: 120,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFF689538)),
                          height: 70,
                          width: 170,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 5,
                                width: 10,
                              ),
                              Text(
                                T1,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
