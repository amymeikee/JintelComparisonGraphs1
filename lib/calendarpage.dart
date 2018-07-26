import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class CalendarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calendar"),
      ),
      body: new Container(
        padding: EdgeInsets.all(5.0),
        margin: new EdgeInsets.only(top: 30.0),
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text('My Calendar', textScaleFactor: 2.0,)
            ),
            new Calendar(
              isExpandable: true
            )
          ]
        )
      )
    );
  }
}