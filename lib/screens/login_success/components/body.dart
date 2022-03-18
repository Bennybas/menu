import 'package:flutter/material.dart';
import 'package:ems/components/default_button.dart';
import 'package:ems/screens/home/home_screen.dart';
import 'package:ems/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 1),
        Image.asset(
          "assets/images/Background.png", //40%
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Login Success",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 70,
          width: 150,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
      ],
    );
  }
}
