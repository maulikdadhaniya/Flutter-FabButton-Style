import 'package:fab_types/fab_types/animated_fab.dart';
import 'package:fab_types/fab_types/custom_expandable_fab.dart';
import 'package:fab_types/fab_types/diamond_fab.dart';
import 'package:fab_types/fab_types/extended_fab.dart';
import 'package:fab_types/fab_types/simple_fab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/simple': (context) => SimpleFab(),
        '/extended': (context) => ExtendedFab(),
        '/diamond': (context) => DiamondFab(),
        '/animated': (context) => AnimatedFab(),
        '/custom_expandable': (context) => CustomExpandableFab(),
      },
      title: 'Fab Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Fab Buttons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
              onPressed: () {
                Navigator.pushNamed(context, '/simple');
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text("Simple Fab", style: TextStyle(fontSize: 14)),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, '/extended');
              },
              color: Colors.green,
              textColor: Colors.white,
              child: Text("Extended Fab", style: TextStyle(fontSize: 14)),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, '/diamond');
              },
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Diamond Fab", style: TextStyle(fontSize: 14)),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, '/animated');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Animated Fab", style: TextStyle(fontSize: 14)),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, '/custom_expandable');
              },
              color: Colors.cyan,
              textColor: Colors.white,
              child:
                  Text("Custom Expandable Fab", style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
