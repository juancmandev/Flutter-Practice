import 'package:flutter/material.dart';

class LobbyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AppBar(
        bottom: TabBar(
          tabs: [
            Text('Gimnasio'),
            Text('Clases'),
          ],
        ),
      ),
    );
  }
}
