import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final bool receiveEmails = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Settings"),
      ),
      body: new Container(
        margin: EdgeInsets.all(30.0),
        child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        new UserAccountsDrawerHeader(
          currentAccountPicture: new CircleAvatar(
            backgroundColor: Colors.red,
          ),
          accountName: new Text('User', style: new TextStyle(color: Colors.black)),
          accountEmail: new Text('user@email.com', style: new TextStyle(color: Colors.black)),
          decoration: new BoxDecoration(
            color: Colors.white10
          ),
        ),
        new Row(
          children: <Widget>[
            new RichText(
              text: new TextSpan(
                style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.black
                ),
                children: <TextSpan>[
                  new TextSpan(
                    style: new TextStyle(fontWeight: FontWeight.w600),
                    text: 'Receive Notifications'
                  )
                ]
              ),
            ),
            new Checkbox(
              tristate: true,
              onChanged: null,
              value: true,
            )
          ],
        ),
        new Divider(height: 20.0),
        new Row(
          children: <Widget>[
            new RichText(
              text: new TextSpan(
                style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.black
                ),
                children: <TextSpan>[
                  new TextSpan(
                    style: new TextStyle(fontWeight: FontWeight.w600),
                    text: 'Receive Emails'
                  )
                ]
              ),
            ),
            new Checkbox(
              tristate: this.receiveEmails,
              onChanged: (bool) => print(bool),
              value: this.receiveEmails,
            )
          ],
        ),
        new Divider(height: 20.0),
        new DropdownButtonHideUnderline(
          child: new DropdownButton<String>(
            value: "Customary Units",
            onChanged: (String measurementScale) {
              print(measurementScale);
            },
            items: <String>["Customary Units", "Metric Units"].map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList()
          )
        ),
        new Divider()
        ],
      ),
      )
    );
  }
}