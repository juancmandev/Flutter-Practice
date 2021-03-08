import 'package:first_screens/lobbyScreen.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10),
          child: TextButton(
            child: Text('Acceder'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.redAccent[400],
              shadowColor: Colors.black,
              elevation: 5,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LobbyScreen(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
