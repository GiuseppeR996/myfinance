import 'package:flutter/material.dart';

class MovimentPage extends StatelessWidget {
  const MovimentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final listTiles = <Widget>[
      const ListTile(
        leading: Icon(Icons.abc),
        title: Text("Spesa1"),
        subtitle: Text("Sub"),
        trailing: Text("2.00€"),
        shape: Border(
          bottom: BorderSide(color: Colors.white, width: 0.5),
        ),
        iconColor: Colors.white,
        textColor: Colors.white,
      ),
      const ListTile(
        leading: Icon(Icons.abc),
        title: Text("Spesa1"),
        subtitle: Text("Sub"),
        trailing: Text("2.00€"),
        shape: Border(
          bottom: BorderSide(color: Colors.white, width: 0.5),
        ),
        iconColor: Colors.white,
        textColor: Colors.white,
      ),
    ];
    return ListView(children: listTiles);
  }
}
