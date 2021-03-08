import 'package:flutter/material.dart';
import 'getDate.dart';
import 'lobbyTab.dart';

class LobbyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    GetDate(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  width: 350,
                  height: 100,
                  color: Colors.grey[200],
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    LobbyTab(),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 350,
                      height: 400,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
