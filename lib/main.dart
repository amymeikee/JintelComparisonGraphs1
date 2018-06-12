import 'package:flutter/material.dart';
import 'package:jintel/labresultspage.dart';

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
        '/labresults': (BuildContext context) => new LabResultsPage(),
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
        drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                accountName: new Text('Jintel Health Patient'),
                accountEmail: new Text('user@email.com'),
                decoration: new BoxDecoration(
                  color: Colors.red
                ),
              ),
              new ListTile(
                title: new Text('Health'),
                onTap: () {
                  print('Tapped Health');
                  Navigator.pop(context);
                },
              ),
              new ListTile(
                title: new Text('Lab Results'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new LabResultsPage()),
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