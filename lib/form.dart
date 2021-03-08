import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  String formText;
  bool hide;

  MyForm(this.formText, this.hide);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Container for the text padding
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            formText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 5, left: 25, right: 25, bottom: 5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: TextFormField(
              obscureText: hide,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]),
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Por favor ingrese su ' + formText;
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}
