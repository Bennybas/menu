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
    var response =
        await http.get(Uri.parse('http://103.219.207.129/ems_api/api/general'));
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
        backgroundColor: Color(0xFF303030),
        title: Text(
          'AusPower',
          style: TextStyle(color: Colors.white),
        ),
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
    var T1 = item['text1'];
    var T2 = item['text2'];
    var img = item['image'];

    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Container(
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFBDBDBD)),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.network(
                            img,
                            width: 120,
                            height: 160,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 120,
                            width: 180,
                            child: Padding(
                              padding: EdgeInsets.zero,
                              child: Column(
                                children: [
                                  Text(
                                    T1,
                                    style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(T2,
                                      style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 10.6,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
