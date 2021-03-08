import 'package:first_screens/button.dart';
import 'package:flutter/material.dart';
import 'package:first_screens/form.dart';
import 'package:first_screens/checkBox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get checkedValue => false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/Flutter.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 300,
                    height: 350,
                    color: Colors.grey[300],
                    child: Column(
                      children: <Widget>[
                        MyForm('Usuario', false),
                        MyForm('Contraseña', true),
                        Button(),
                        Container(
                          padding: EdgeInsets.only(top: 1),
                          child: MyCheckbox(),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, top: 5),
                          child: InkWell(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue[400],
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Recuperar Contraseña',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
