import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class RemindersPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Reminders"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 10.0),
                child: new Center(
                  child: new Text('Remind me to', style: new TextStyle(fontSize: 25.0))
                )
              ),
              new Container(
                padding: EdgeInsets.only(top: 30.0),
                child: new Center(
                  child: new Text('do something', style: new TextStyle(fontSize: 25.0))
                )
              ),
              new Container(
                padding: EdgeInsets.only(top: 30.0),
                child: new Center(
                  child: new Text('at', style: new TextStyle(fontSize: 25.0))
                )
              ),
              new Container(
                padding: EdgeInsets.only(top: 50.0),
                child: new Calendar(
                  isExpandable: true
                )
              ),
              new Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(left: 10.0, right: 20.0),
                      child: new TextField (
                        decoration: new InputDecoration(
                          hintText: 'Time'
                        )
                      ),
                    ),
                    new Container (
                      padding: EdgeInsets.only(top: 30.0),
                      child: new Center(
                        child: new RaisedButton(
                          child: new Text("Create Reminder", style: new TextStyle(color: Colors.white)),
                          color: Colors.red,
                          onPressed: () => Navigator.pushNamed(context, '/home')
                        )
                      )
                    )
                  ]
                )
              )
            ]
        )
      )
    );
  }
}