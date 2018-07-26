import 'package:flutter/material.dart';
import 'package:jintel/healthpage.dart';
import 'package:jintel/settingspage.dart';
import 'package:jintel/loginpage.dart';
import 'package:jintel/contactpage.dart';
import 'package:jintel/calendarpage.dart';
import 'package:jintel/reminderspage.dart';

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
        '/home': (BuildContext context) => new HomePage(),
        '/health': (BuildContext context) => new HealthPage(),
        '/settings': (BuildContext context) => new SettingsPage(),
        '/login': (BuildContext context) => new LoginPage(),
        '/contact': (BuildContext context) => new ContactPage(),
        '/calendar': (BuildContext context) => new CalendarPage(),
        '/reminders': (BuildContext context) => new RemindersPage()
      },
      home: new HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
   @override
  HomePageState createState() => new HomePageState();
}


class HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
  }


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
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new Center(
                          child: new Text("Reminders", style: TextStyle(fontSize: 20.0))
                        )
                      ),
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            new Card(
                              child: new Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    leading: const Icon(Icons.calendar_today),
                                    title: const Text('Appointment'),
                                    subtitle: const Text('7 AM today'),
                                  ),
                                  new ButtonTheme.bar(
                                    child: new ButtonBar(
                                      children: <Widget>[
                                        new FlatButton(
                                          child: new Text('View Reminder'),
                                          onPressed: () => {}
                                        ),
                                        new FlatButton(
                                          child: new Text('Delete Reminder'),
                                          onPressed: () => {}
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Card(
                              child: new Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    leading: const Icon(Icons.calendar_today),
                                    title: const Text('Appointment'),
                                    subtitle: const Text('6 PM today'),
                                  ),
                                  new ButtonTheme.bar(
                                    child: new ButtonBar(
                                      children: <Widget>[
                                        new FlatButton(
                                          child: new Text('View Reminder'),
                                          onPressed: () => {}
                                        ),
                                        new FlatButton(
                                          child: new Text('Delete Reminder'),
                                          onPressed: () => {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Card(
                              child: new Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    leading: const Icon(Icons.calendar_today),
                                    title: const Text('Appointment'),
                                    subtitle: const Text('7 AM tomorrow'),
                                  ),
                                  new ButtonTheme.bar(
                                    child: new ButtonBar(
                                      children: <Widget>[
                                        new FlatButton(
                                          child: new Text('View Reminder'),
                                          onPressed: () => {}
                                        ),
                                        new FlatButton(
                                          child: new Text('Delete Reminder'),
                                          onPressed: () => {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: new Center(
                              child: new RaisedButton(
                                child: new Text('Set a Reminder', style: new TextStyle(color: Colors.white),),
                                color: Colors.red,
                                onPressed: () => Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(builder: (context) => new RemindersPage()),
                                                )
                              ),
                            ),
                            )
                          ],
                        ),
                      )
                    ]
                  )
                )
              )
            ]
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
                title: new Text('Login'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new LoginPage()),
                  );
                },
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
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new SettingsPage()),
                  );
                }
              ),
              new ListTile(
                title: new Text('Contact Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new ContactPage()),
                  );
                }
              ),
              new ListTile(
                title: new Text('Calendar'),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new CalendarPage()),
                  );
                }
              )
            ],
          )
        ),
      );
  }
}