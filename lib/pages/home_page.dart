import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text("Cattletracker Client Dashboard"),
            actions: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
              )
            ]),
        body: Dashboard().returnDashboard());
  }
}
