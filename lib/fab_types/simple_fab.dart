import 'package:flutter/material.dart';

class SimpleFab extends StatefulWidget {
  SimpleFab({Key key}) : super(key: key);

  @override
  _SimpleFabState createState() => _SimpleFabState();
}

class _SimpleFabState extends State<SimpleFab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Fab'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Simple Fab")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.red,
        tooltip: 'Simple Fab',
        child: Icon(Icons.add),
      ), // Th
    );
  }
}
