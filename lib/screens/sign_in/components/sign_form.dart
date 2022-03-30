import 'package:flutter/material.dart';
import 'package:ems/helper/keyboard.dart';
import 'package:ems/screens/home/components/grid.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:http/http.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              login();
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: "Type your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: usernameController,
      decoration: InputDecoration(
        labelText: 'username',
        hintText: "Type your username",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  Future<void> login() async {
    if (passwordController.text.isNotEmpty &&
        usernameController.text.isNotEmpty) {
      var response = await post(
          Uri.parse('http://103.219.207.129/ems_api/api/loginpage'),
          body: ({
            'username': usernameController.text,
            'password': passwordController.text
          }));
      if (usernameController.text == 'admin' &&
          passwordController.text == '123') {
        Navigator.pushNamed(context, Grid.routeName);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('username or password incorrect')));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('please fill all the fields')));
    }
  }
}
