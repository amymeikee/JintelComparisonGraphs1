import 'package:flutter/material.dart';
import 'package:jintel/healthpage.dart';

void main() => runApp(new JintelApp());

class JintelApp extends StatelessWidget {
  final String title;
  JintelApp({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Jintel',
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      routes: <String, WidgetBuilder>{
        '/health': (BuildContext context) => new HealthPage(),
      },
      home: new HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Jintel'),
          backgroundColor: Colors.red,
        ),
        body: new Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Center(
                  child: new Text("None of the data in this application is based on real values or estimates."),
                )
              )
            ],
          ),
        ),
        drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                accountName: new Text('User'),
                accountEmail: new Text('user@email.com'),
                decoration: new BoxDecoration(
                  color: Colors.red
                ),
              ),
              new ListTile(
                title: new Text('Health'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new HealthPage()),
                  );
                },
              ),
              new ListTile(
                title: new Text('Settings'),
                onTap: () {
                  print('Tapped Settings');
                  Navigator.pop(context);
                }
              )
            ],
          )
        ),
      );
  }
}