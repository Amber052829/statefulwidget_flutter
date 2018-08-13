import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Scaffold Test", home: new HomePage(),
    theme: new ThemeData.dark(
       
    ),);
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String bleh = "Shivangi";

  void _blah() {
    setState(() {
      if (bleh.startsWith("S")) {
        bleh = "Amber";
      } else {
        bleh = "Shivangi";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("HomePage"),
        ),
        body: _bodyWidget());
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(bleh),
            new RaisedButton(
              child: new Text("Loves", style: new TextStyle(color: Colors.white),),
              onPressed: _blah,
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
