import 'package:flutter/material.dart';

class ExtendedFab extends StatefulWidget {
  ExtendedFab({Key key}) : super(key: key);

  @override
  _ExtendedFabState createState() => _ExtendedFabState();
}

class _ExtendedFabState extends State<ExtendedFab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Extended Fab'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("Extended Fab")],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Extended Fab'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          tooltip: 'Extended',
          onPressed: () => {},
        ) // Th
        );
  }
}
